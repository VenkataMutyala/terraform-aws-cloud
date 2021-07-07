## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >=1.0.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 3.45.0 |
| <a name="requirement_helm"></a> [helm](#requirement\_helm) | 2.2.0 |
| <a name="requirement_kubernetes"></a> [kubernetes](#requirement\_kubernetes) | 2.2.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 3.45.0 |
| <a name="provider_helm"></a> [helm](#provider\_helm) | 2.2.0 |
| <a name="provider_kubernetes"></a> [kubernetes](#provider\_kubernetes) | 2.2.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_eks"></a> [eks](#module\_eks) | terraform-aws-modules/eks/aws | 17.1.0 |
| <a name="module_func_role_label"></a> [func\_role\_label](#module\_func\_role\_label) | cloudposse/label/null | 0.24.1 |
| <a name="module_function_mesh_operator"></a> [function\_mesh\_operator](#module\_function\_mesh\_operator) | ./modules/function-mesh-operator | n/a |
| <a name="module_label"></a> [label](#module\_label) | cloudposse/label/null | 0.24.1 |
| <a name="module_olm"></a> [olm](#module\_olm) | ./modules/operator-lifecycle-manager | n/a |
| <a name="module_olm_subscriptions"></a> [olm\_subscriptions](#module\_olm\_subscriptions) | ./modules/olm-subscriptions | n/a |
| <a name="module_pulsar_operator"></a> [pulsar\_operator](#module\_pulsar\_operator) | ./modules/pulsar-operator | n/a |
| <a name="module_this"></a> [this](#module\_this) | cloudposse/label/null | 0.24.1 |
| <a name="module_tiered_storage"></a> [tiered\_storage](#module\_tiered\_storage) | streamnative/managed-cloud/aws//modules/tiered_storage | 0.4.1 |
| <a name="module_tiered_storage_label"></a> [tiered\_storage\_label](#module\_tiered\_storage\_label) | cloudposse/label/null | 0.24.1 |
| <a name="module_vault"></a> [vault](#module\_vault) | streamnative/managed-cloud/aws//modules/vault_resources | 0.4.1 |
| <a name="module_vault_operator"></a> [vault\_operator](#module\_vault\_operator) | ./modules/vault-operator | n/a |

## Resources

| Name | Type |
|------|------|
| [aws_ec2_tag.private_subnet_tag](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ec2_tag) | resource |
| [aws_ec2_tag.public_subnet_tag](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ec2_tag) | resource |
| [aws_ec2_tag.subnet_tag](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ec2_tag) | resource |
| [aws_ec2_tag.vpc_tag](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ec2_tag) | resource |
| [aws_iam_policy.cluster_autoscaler](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy) | resource |
| [aws_iam_role.cert_manager](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role.cluster_autoscaler](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role.csi](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role.external_dns](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role.func_pool](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role.tiered_storage](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role.vault](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role_policy_attachment.tiered_storage](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_role_policy_attachment.vault](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [helm_release.cert_manager](https://registry.terraform.io/providers/hashicorp/helm/2.2.0/docs/resources/release) | resource |
| [helm_release.cluster_autoscaler](https://registry.terraform.io/providers/hashicorp/helm/2.2.0/docs/resources/release) | resource |
| [helm_release.csi](https://registry.terraform.io/providers/hashicorp/helm/2.2.0/docs/resources/release) | resource |
| [helm_release.external_dns](https://registry.terraform.io/providers/hashicorp/helm/2.2.0/docs/resources/release) | resource |
| [kubernetes_namespace.func_pool](https://registry.terraform.io/providers/hashicorp/kubernetes/2.2.0/docs/resources/namespace) | resource |
| [kubernetes_namespace.pulsar](https://registry.terraform.io/providers/hashicorp/kubernetes/2.2.0/docs/resources/namespace) | resource |
| [kubernetes_namespace.sn_system](https://registry.terraform.io/providers/hashicorp/kubernetes/2.2.0/docs/resources/namespace) | resource |
| [kubernetes_service_account.csi](https://registry.terraform.io/providers/hashicorp/kubernetes/2.2.0/docs/resources/service_account) | resource |
| [aws_caller_identity.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity) | data source |
| [aws_iam_policy_document.cert_manager](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_iam_policy_document.cert_manager_sts](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_iam_policy_document.csi](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_iam_policy_document.csi_sts](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_iam_policy_document.external_dns](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_iam_policy_document.external_dns_sts](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_iam_policy_document.func_pool_sa](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_iam_policy_document.func_pool_sts](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_iam_policy_document.tiered_storage](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_iam_policy_document.vault](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_iam_policy_document.vault_base_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_iam_policy_document.worker_autoscaling](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_add_vpc_tags"></a> [add\_vpc\_tags](#input\_add\_vpc\_tags) | Indicate whether the eks tags should be added to vpc and subnets | `bool` | `false` | no |
| <a name="input_additional_tag_map"></a> [additional\_tag\_map](#input\_additional\_tag\_map) | Additional tags for appending to tags\_as\_list\_of\_maps. Not added to `tags`. | `map(string)` | `{}` | no |
| <a name="input_attributes"></a> [attributes](#input\_attributes) | Additional attributes (e.g. `1`) | `list(string)` | `[]` | no |
| <a name="input_aws_partition"></a> [aws\_partition](#input\_aws\_partition) | AWS partition: 'aws', 'aws-cn', or 'aws-us-gov' | `string` | `"aws"` | no |
| <a name="input_cert_manager_service_account_annotations"></a> [cert\_manager\_service\_account\_annotations](#input\_cert\_manager\_service\_account\_annotations) | Additional annotations for the cert-manager service account, which will be passed to the Helm chart values | `map(any)` | `{}` | no |
| <a name="input_cert_manager_settings"></a> [cert\_manager\_settings](#input\_cert\_manager\_settings) | Additional settings which will be passed to the Helm chart values | `map(any)` | `{}` | no |
| <a name="input_cluster_autoscaler_settings"></a> [cluster\_autoscaler\_settings](#input\_cluster\_autoscaler\_settings) | Additional settings which will be passed to the Helm chart values, see https://hub.helm.sh/charts/bitnami/external-dns | `map(any)` | `{}` | no |
| <a name="input_cluster_enabled_log_types"></a> [cluster\_enabled\_log\_types](#input\_cluster\_enabled\_log\_types) | A list of the desired control plane logging to enable. For more information, see Amazon EKS Control Plane Logging documentation (https://docs.aws.amazon.com/eks/latest/userguide/control-plane-logs.html) | `list(string)` | `[]` | no |
| <a name="input_cluster_name"></a> [cluster\_name](#input\_cluster\_name) | The name of your EKS cluster and associated resources. Must be 16 characters or less | `string` | `""` | no |
| <a name="input_cluster_subnet_ids"></a> [cluster\_subnet\_ids](#input\_cluster\_subnet\_ids) | A list of subnet IDs to place the EKS cluster and workers within | `list(string)` | `[]` | no |
| <a name="input_cluster_version"></a> [cluster\_version](#input\_cluster\_version) | The version of Kubernetes to be installed | `string` | `"1.18"` | no |
| <a name="input_context"></a> [context](#input\_context) | Single object for setting entire context at once.<br>See description of individual variables for details.<br>Leave string and numeric variables as `null` to use default value.<br>Individual variable settings (non-null) override settings in context object,<br>except for attributes, tags, and additional\_tag\_map, which are merged. | <pre>object({<br>    enabled             = bool<br>    namespace           = string<br>    environment         = string<br>    stage               = string<br>    name                = string<br>    delimiter           = string<br>    attributes          = list(string)<br>    tags                = map(string)<br>    additional_tag_map  = map(string)<br>    regex_replace_chars = string<br>    label_order         = list(string)<br>    id_length_limit     = number<br>  })</pre> | <pre>{<br>  "additional_tag_map": {},<br>  "attributes": [],<br>  "delimiter": null,<br>  "enabled": true,<br>  "environment": null,<br>  "id_length_limit": null,<br>  "label_order": [],<br>  "name": null,<br>  "namespace": null,<br>  "regex_replace_chars": null,<br>  "stage": null,<br>  "tags": {}<br>}</pre> | no |
| <a name="input_csi_namespace"></a> [csi\_namespace](#input\_csi\_namespace) | The namespace used for AWS EKS Container Storage Interface (CSI) | `string` | `"kube-system"` | no |
| <a name="input_csi_sa_name"></a> [csi\_sa\_name](#input\_csi\_sa\_name) | The service account name used for AWS EKS Container Storage Interface (CSI) | `string` | `"efs-csi-controller-sa"` | no |
| <a name="input_delimiter"></a> [delimiter](#input\_delimiter) | Delimiter to be used between `namespace`, `environment`, `stage`, `name` and `attributes`.<br>Defaults to `-` (hyphen). Set to `""` to use no delimiter at all. | `string` | `null` | no |
| <a name="input_enable_function_mesh_operator"></a> [enable\_function\_mesh\_operator](#input\_enable\_function\_mesh\_operator) | Enables the StreamNative Function Mesh Operator on the EKS cluster | `bool` | `false` | no |
| <a name="input_enable_irsa"></a> [enable\_irsa](#input\_enable\_irsa) | Enables the OpenID Connect Provider for EKS to use IAM Roles for Service Accounts (IRSA) | `bool` | `true` | no |
| <a name="input_enable_olm"></a> [enable\_olm](#input\_enable\_olm) | Enables Operator Lifecycle Manager (OLM) on the EKS cluster | `bool` | `true` | no |
| <a name="input_enable_olm_subscriptions"></a> [enable\_olm\_subscriptions](#input\_enable\_olm\_subscriptions) | Enables subscriptions for StreamNative Operators within the Operator Lifecycle Manager | `bool` | `true` | no |
| <a name="input_enable_pulsar_operator"></a> [enable\_pulsar\_operator](#input\_enable\_pulsar\_operator) | Enables the Pulsar Operator on the EKS cluster | `bool` | `false` | no |
| <a name="input_enable_vault_operator"></a> [enable\_vault\_operator](#input\_enable\_vault\_operator) | Enables the Hashicorp Vault operator on the EKS cluster | `bool` | `true` | no |
| <a name="input_enabled"></a> [enabled](#input\_enabled) | Set to false to prevent the module from creating any resources | `bool` | `null` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Environment, e.g. 'uw2', 'us-west-2', OR 'prod', 'staging', 'dev', 'UAT' | `string` | `null` | no |
| <a name="input_external_dns_settings"></a> [external\_dns\_settings](#input\_external\_dns\_settings) | Additional settings which will be passed to the Helm chart values, see https://hub.helm.sh/charts/bitnami/external-dns | `map(any)` | `{}` | no |
| <a name="input_func_pool_allowed_role_arns"></a> [func\_pool\_allowed\_role\_arns](#input\_func\_pool\_allowed\_role\_arns) | The role resources (or patterns) that function roles can assume | `list(string)` | <pre>[<br>  "arn:aws:iam::*:role/pulsar-func-*"<br>]</pre> | no |
| <a name="input_func_pool_desired_size"></a> [func\_pool\_desired\_size](#input\_func\_pool\_desired\_size) | Desired number of worker nodes | `number` | `1` | no |
| <a name="input_func_pool_disk_size"></a> [func\_pool\_disk\_size](#input\_func\_pool\_disk\_size) | Disk size in GiB for function worker nodes. Defaults to 20. Terraform will only perform drift detection if a configuration value is provided | `number` | `20` | no |
| <a name="input_func_pool_enabled"></a> [func\_pool\_enabled](#input\_func\_pool\_enabled) | Enable an additional dedicated function pool | `bool` | `false` | no |
| <a name="input_func_pool_instance_types"></a> [func\_pool\_instance\_types](#input\_func\_pool\_instance\_types) | Set of instance types associated with the EKS Node Group. Defaults to ["t3.medium"]. Terraform will only perform drift detection if a configuration value is provided | `list(string)` | <pre>[<br>  "t3.medium"<br>]</pre> | no |
| <a name="input_func_pool_kubernetes_labels"></a> [func\_pool\_kubernetes\_labels](#input\_func\_pool\_kubernetes\_labels) | Key-value mapping of Kubernetes labels. Only labels that are applied with the EKS API are managed by this argument. Other Kubernetes labels applied to the EKS Node Group will not be managed | `map(string)` | `{}` | no |
| <a name="input_func_pool_max_size"></a> [func\_pool\_max\_size](#input\_func\_pool\_max\_size) | The maximum size of the AutoScaling Group | `number` | `5` | no |
| <a name="input_func_pool_min_size"></a> [func\_pool\_min\_size](#input\_func\_pool\_min\_size) | The minimum size of the AutoScaling Group | `number` | `1` | no |
| <a name="input_func_pool_namespace"></a> [func\_pool\_namespace](#input\_func\_pool\_namespace) | The namespace where functions run | `string` | `"pulsar-funcs"` | no |
| <a name="input_func_pool_sa_name"></a> [func\_pool\_sa\_name](#input\_func\_pool\_sa\_name) | The service account name the functions use | `string` | `"default"` | no |
| <a name="input_hosted_zone_id"></a> [hosted\_zone\_id](#input\_hosted\_zone\_id) | The ID of the Route53 hosted zone used by the cluster's external-dns configuration | `string` | `""` | no |
| <a name="input_id_length_limit"></a> [id\_length\_limit](#input\_id\_length\_limit) | Limit `id` to this many characters.<br>Set to `0` for unlimited length.<br>Set to `null` for default, which is `0`.<br>Does not affect `id_full`. | `number` | `null` | no |
| <a name="input_kubeconfig_output_path"></a> [kubeconfig\_output\_path](#input\_kubeconfig\_output\_path) | Where to save the Kubectl config file (if `write_kubeconfig = true`). Assumed to be a directory if the value ends with a forward slash `/`. | `string` | `"./"` | no |
| <a name="input_label_order"></a> [label\_order](#input\_label\_order) | The naming order of the id output and Name tag.<br>Defaults to ["namespace", "environment", "stage", "name", "attributes"].<br>You can omit any of the 5 elements, but at least one must be present. | `list(string)` | `null` | no |
| <a name="input_manage_cluster_iam_resources"></a> [manage\_cluster\_iam\_resources](#input\_manage\_cluster\_iam\_resources) | Whether to let the module manage worker IAM reosurces. If set to false, cluster\_iam\_role\_name must be specified for workers | `bool` | `true` | no |
| <a name="input_manage_worker_iam_resources"></a> [manage\_worker\_iam\_resources](#input\_manage\_worker\_iam\_resources) | Whether to let the module manage worker IAM reosurces. If set to false, cluster\_iam\_role\_name must be specified for workers | `bool` | `false` | no |
| <a name="input_map_additional_aws_accounts"></a> [map\_additional\_aws\_accounts](#input\_map\_additional\_aws\_accounts) | Additional AWS account numbers to add to `config-map-aws-auth` ConfigMap | `list(string)` | `[]` | no |
| <a name="input_map_additional_iam_roles"></a> [map\_additional\_iam\_roles](#input\_map\_additional\_iam\_roles) | Additional IAM roles to add to `config-map-aws-auth` ConfigMap | <pre>list(object({<br>    rolearn  = string<br>    username = string<br>    groups   = list(string)<br>  }))</pre> | `[]` | no |
| <a name="input_map_additional_iam_users"></a> [map\_additional\_iam\_users](#input\_map\_additional\_iam\_users) | Additional IAM roles to add to `config-map-aws-auth` ConfigMap | <pre>list(object({<br>    userarn  = string<br>    username = string<br>    groups   = list(string)<br>  }))</pre> | `[]` | no |
| <a name="input_name"></a> [name](#input\_name) | Solution name, e.g. 'app' or 'jenkins' | `string` | `null` | no |
| <a name="input_namespace"></a> [namespace](#input\_namespace) | Namespace, which could be your organization name or abbreviation, e.g. 'eg' or 'cp' | `string` | `null` | no |
| <a name="input_node_pool_desired_size"></a> [node\_pool\_desired\_size](#input\_node\_pool\_desired\_size) | Desired number of worker nodes in the node pool | `number` | n/a | yes |
| <a name="input_node_pool_disk_size"></a> [node\_pool\_disk\_size](#input\_node\_pool\_disk\_size) | Disk size in GiB for worker nodes in the node pool. Defaults to 20. Terraform will only perform drift detection if a configuration value is provided | `number` | `null` | no |
| <a name="input_node_pool_instance_types"></a> [node\_pool\_instance\_types](#input\_node\_pool\_instance\_types) | Set of instance types associated with the EKS Node Group. Defaults to ["t3.medium"]. Terraform will only perform drift detection if a configuration value is provided | `list(string)` | <pre>[<br>  "t3.medium"<br>]</pre> | no |
| <a name="input_node_pool_max_size"></a> [node\_pool\_max\_size](#input\_node\_pool\_max\_size) | The maximum size of the node pool Autoscaling group | `number` | n/a | yes |
| <a name="input_node_pool_min_size"></a> [node\_pool\_min\_size](#input\_node\_pool\_min\_size) | The minimum size of the node pool AutoScaling group | `number` | n/a | yes |
| <a name="input_private_subnet_ids"></a> [private\_subnet\_ids](#input\_private\_subnet\_ids) | The ids of existing private subnets | `list(string)` | `[]` | no |
| <a name="input_public_subnet_ids"></a> [public\_subnet\_ids](#input\_public\_subnet\_ids) | The ids of existing public subnets | `list(string)` | `[]` | no |
| <a name="input_pulsar_namespace"></a> [pulsar\_namespace](#input\_pulsar\_namespace) | The Kubernetes namespace used for the Pulsar workload | `string` | n/a | yes |
| <a name="input_regex_replace_chars"></a> [regex\_replace\_chars](#input\_regex\_replace\_chars) | Regex to replace chars with empty string in `namespace`, `environment`, `stage` and `name`.<br>If not set, `"/[^a-zA-Z0-9-]/"` is used to remove all characters other than hyphens, letters and digits. | `string` | `null` | no |
| <a name="input_region"></a> [region](#input\_region) | The AWS region | `string` | n/a | yes |
| <a name="input_s3_bucket_name_override"></a> [s3\_bucket\_name\_override](#input\_s3\_bucket\_name\_override) | Overrides the name for S3 bucket resources | `string` | `""` | no |
| <a name="input_stage"></a> [stage](#input\_stage) | Stage, e.g. 'prod', 'staging', 'dev', OR 'source', 'build', 'test', 'deploy', 'release' | `string` | `null` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Additional tags (e.g. `map('BusinessUnit','XYZ')` | `map(string)` | `{}` | no |
| <a name="input_vault_prefix_override"></a> [vault\_prefix\_override](#input\_vault\_prefix\_override) | Overrides the name prefix for Vault resources | `string` | `""` | no |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | The ID of the AWS VPC to use | `string` | `""` | no |
| <a name="input_wait_for_cluster_timeout"></a> [wait\_for\_cluster\_timeout](#input\_wait\_for\_cluster\_timeout) | Time in seconds to wait for the newly provisioned EKS cluster's API/healthcheck endpoint to return healthy, before applying the aws-auth configmap. Defaults to 300 seconds in the parent module "terraform-aws-modules/eks/aws", which is often too short. Increase to at least 900 seconds, if needed. See also https://github.com/terraform-aws-modules/terraform-aws-eks/pull/1420 | `number` | `0` | no |
| <a name="input_write_kubeconfig"></a> [write\_kubeconfig](#input\_write\_kubeconfig) | Whether to write a Kubectl config file containing the cluster configuration. Saved to variable "kubeconfig\_output\_path". | `bool` | `true` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_eks_cluster_arn"></a> [eks\_cluster\_arn](#output\_eks\_cluster\_arn) | n/a |
| <a name="output_eks_cluster_id"></a> [eks\_cluster\_id](#output\_eks\_cluster\_id) | n/a |
| <a name="output_eks_cluster_identity_oidc_issuer_arn"></a> [eks\_cluster\_identity\_oidc\_issuer\_arn](#output\_eks\_cluster\_identity\_oidc\_issuer\_arn) | n/a |
| <a name="output_eks_cluster_identity_oidc_issuer_url"></a> [eks\_cluster\_identity\_oidc\_issuer\_url](#output\_eks\_cluster\_identity\_oidc\_issuer\_url) | n/a |