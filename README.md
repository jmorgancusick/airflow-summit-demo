# airflow-summit-demo
A bunch of vulnerable S3 buckets managed by Terraform

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 5.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.66.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_s3_bucket.example](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket) | resource |
| [aws_s3_bucket_ownership_controls.example](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_ownership_controls) | resource |
| [aws_s3_bucket_policy.allow_this_account_admins](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_policy) | resource |
| [aws_s3_bucket_public_access_block.public_access_block](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_public_access_block) | resource |
| [aws_caller_identity.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity) | data source |
| [aws_iam_policy_document.this_accounts_admins](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_iam_roles.admins](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_roles) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_admin_iam_role_regex"></a> [admin\_iam\_role\_regex](#input\_admin\_iam\_role\_regex) | A regex to match IAM roles that will have r/w permission on the s3 bucket | `string` | `"(AWSReservedSSO_AWSAdministratorAccess_|github_actions_admin).*"` | no |
| <a name="input_aws_profile"></a> [aws\_profile](#input\_aws\_profile) | The awscli profile to use when configuring the AWS provider | `string` | `"personal"` | no |
| <a name="input_aws_region"></a> [aws\_region](#input\_aws\_region) | The region to use when configuring the AWS provider | `string` | `"us-east-1"` | no |
| <a name="input_bucket_name"></a> [bucket\_name](#input\_bucket\_name) | The s3 bucket name | `string` | n/a | yes |
| <a name="input_owner"></a> [owner](#input\_owner) | This project's owner, which will be added as a tag to resources | `string` | `"Jack Cusick"` | no |

## Outputs

No outputs.