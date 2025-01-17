#
# Licensed to the Apache Software Foundation (ASF) under one
# or more contributor license agreements.  See the NOTICE file
# distributed with this work for additional information
# regarding copyright ownership.  The ASF licenses this file
# to you under the Apache License, Version 2.0 (the
# "License"); you may not use this file except in compliance
# with the License.  You may obtain a copy of the License at
#
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing,
# software distributed under the License is distributed on an
# "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
# KIND, either express or implied.  See the License for the
# specific language governing permissions and limitations
# under the License.
#

data "aws_iam_policy_document" "cert_manager" {
  statement {
    sid = "Changes"
    actions = [
      "route53:GetChange"
    ]
    resources = [
      "arn:aws:route53:::change/*"
    ]
    effect = "Allow"
  }

  statement {
    sid = "Update"
    actions = [
      "route53:ChangeResourceRecordSets",
      "route53:ListResourceRecordSets"
    ]
    resources = [
      "arn:aws:route53:::hostedzone/${var.hosted_zone_id}"
    ]
    effect = "Allow"
  }

  statement {
    sid = "List"
    actions = [
      "route53:ListHostedZonesByName"
    ]
    resources = [
      "*"
    ]
    effect = "Allow"
  }
}

data "aws_iam_policy_document" "cert_manager_sts" {
  statement {
    actions = [
      "sts:AssumeRoleWithWebIdentity"
    ]
    effect = "Allow"
    principals {
      type        = "Federated"
      identifiers = [format("arn:%s:iam::%s:oidc-provider/%s", var.aws_partition, local.account_id, local.oidc_issuer)]
    }
    condition {
      test     = "StringLike"
      values   = [format("system:serviceaccount:%s:%s", "kube-system", "cert-manager")]
      variable = format("%s:sub", local.oidc_issuer)
    }
  }
}

resource "aws_iam_role" "cert_manager" {
  name               = format("%s-cert-manager-role", module.eks.cluster_id)
  description        = "Role assumed by EKS ServiceAccount cert-manager"
  assume_role_policy = data.aws_iam_policy_document.cert_manager_sts.json

  inline_policy {
    name   = format("%s-cert-manager-policy", module.eks.cluster_id)
    policy = data.aws_iam_policy_document.cert_manager.json
  }
}

resource "helm_release" "cert_manager" {
  atomic           = true
  chart            = "cert-manager"
  cleanup_on_fail  = true
  create_namespace = false
  name             = "cert-manager"
  namespace        = "kube-system"
  repository       = "https://charts.jetstack.io"
  timeout          = 600
  version          = "1.4.0"
  wait             = true

  set {
    name  = "installCRDs"
    value = true
  }

  set {
    name  = "serviceAccount.name"
    value = "cert-manager"
  }

  set {
    name  = "extraArgs[0]"
    value = "--issuer-ambient-credentials=true"
  }

  set {
    name  = "securityContext.fsGroup"
    value = "65534"
  }

  set {
    name  = "serviceAccount.annotations.eks\\.amazonaws\\.com\\/role\\-arn"
    value = aws_iam_role.cert_manager.arn
    type  = "string"
  }

  dynamic "set" {
    for_each = var.cert_manager_settings
    content {
      name  = set.key
      value = set.value
    }
  }
}
