variable "region" {
  type = string
}

variable "env" {
  type = string
}

variable "vpc_cidr" {
  type = string
}

variable "subnet_cidr" {
  type = string
}

variable "availability_zone" {
  type    = string
  default = "us-east-1a"
}

variable "route_table_cidr" {
  type = string
}

variable "instance_type" {
  type = string
}

variable "security_cidr_blocks" {
  type = list(string)
}

variable "bucket_prefix" {
  type = string
}
