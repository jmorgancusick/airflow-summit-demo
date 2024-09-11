variable "aws_region" {
  description = "The region to use when configuring the AWS provider"
  type        = string
  default     = "us-east-1"
}

variable "aws_profile" {
  description = "The awscli profile to use when configuring the AWS provider"
  type        = string
  default     = "personal"
}

variable "owner" {
  description = "This project's owner, which will be added as a tag to resources"
  type        = string
  default     = "Jack Cusick"
}

variable "bucket_name" {
  description = "The s3 bucket name"
  type        = string
}

variable "admin_iam_role_regex" {
  description = "A regex to match IAM roles that will have r/w permission on the s3 bucket"
  type        = string
  default     = "(AWSReservedSSO_AWSAdministratorAccess_|github_actions_admin).*"
}