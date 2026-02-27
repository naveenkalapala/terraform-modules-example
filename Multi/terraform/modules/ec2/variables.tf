variable "env" {
  type        = string
  description = "Environment name (e.g., dev, stage, prod)"
}

variable "instance_type" {
  type        = string
  description = "EC2 instance type"
}

variable "subnet_id" {
  type        = string
  description = "Subnet ID where the EC2 instance will be launched"
}

variable "vpc_id" {
  type        = string
  description = "VPC ID for the security group"
}

variable "security_cidr_blocks" {
  type        = list(string)
  description = "CIDR blocks allowed to access the EC2 instance"
  default     = ["0.0.0.0/0"]
}

variable "tags" {
  type        = map(string)
  description = "Additional tags to apply to the EC2 instance"
  default     = {}
}
