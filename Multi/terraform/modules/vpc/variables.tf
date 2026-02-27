variable "env" {
  type        = string
  description = "Environment name (e.g., dev, stage, prod)"
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
  description = "CIDR block for the route table (usually 0.0.0.0/0)"
  default     = "0.0.0.0/0"
}
