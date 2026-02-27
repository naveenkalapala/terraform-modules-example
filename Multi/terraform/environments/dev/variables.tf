variable "env" {
  type        = string
  description = "Environment name"
}

variable "instance_type" {
  type        = string
  description = "EC2 instance type"
}

variable "vpc_cidr" {
  type        = string
  description = "CIDR block for the VPC"
}

variable "subnet_cidr" {
  type        = string
  description = "CIDR block for the subnet"
}

variable "availability_zone" {
  type        = string
  description = "Availability zone for the subnet"
  default     = "us-east-1a"
}

variable "route_table_cidr" {
  type        = string
  description = "CIDR block for the route table"
  default     = "0.0.0.0/0"
}

variable "security_cidr_blocks" {
  type        = list(string)
  description = "CIDR blocks allowed to access the EC2 instance"
  default     = ["0.0.0.0/0"]
}

variable "tags" {
  type        = map(string)
  description = "Tags to apply to resources"
  default     = {}
}
