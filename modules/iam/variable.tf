variable "role_name" {
  type = string
  description = "Name of the IAM role"
}

variable "user_name" {
  type = string
  description = "Name of the IAM user"
}

variable "ec2_role" {
  type = string
  description = "Name of the IAM role for EC2 instances"
}

variable "bucket_prefix" {
  type = string
  description = "Prefix for the S3 bucket name"
}

variable "env" {
  type = string
  description = "Environment name (e.g., Development, Staging, Production)"
}

variable "region" {
  type = string
  description = "AWS region (e.g., us-east-1)"
}
variable "s3_policy_name" {
  type = string
  description = "Name of the IAM policy for S3 Read access"
}
