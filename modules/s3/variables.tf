variable "env" {
    type = string
    description = "Environment name (e.g., Development, Staging, Production)"
}

variable "region" {
    type = string
    description = "AWS region (e.g., us-east-1)"
}
variable "bucket_prefix" {
    type = string
    description = "Prefix for the S3 bucket name"
}
