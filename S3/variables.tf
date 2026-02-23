
# S3 Buckets with for_each and each.key
variable "env" {
    type = list(string)
    description = "Environment name (e.g., Development, Staging, Production)"
}

variable "env_bucket" {
    type = map(string)
    description = "Environment name (e.g., Development, Staging, Production)"
}