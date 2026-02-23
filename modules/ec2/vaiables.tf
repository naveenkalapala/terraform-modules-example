variable "env" {
  type = string
}

variable "instance_type" {
  type = string
}

variable "vpc_id" {
  type = string
}

variable "subnet_id" {
  type = string
}

variable "security_cidr_blocks" {
  type = list(string)
}