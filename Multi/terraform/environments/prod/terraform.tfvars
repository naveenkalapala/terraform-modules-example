env           = "prod"
instance_type = "t3.medium"

vpc_cidr          = "10.2.0.0/16"
subnet_cidr       = "10.2.1.0/24"
availability_zone = "us-east-1a"
route_table_cidr  = "0.0.0.0/0"

security_cidr_blocks = ["10.0.0.0/8"]

tags = {
  Project = "demo"
  Owner   = "prod-team"
}
