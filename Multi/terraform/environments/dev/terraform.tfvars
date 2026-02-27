env           = "dev"
instance_type = "t2.micro"

vpc_cidr          = "10.0.0.0/16"
subnet_cidr       = "10.0.1.0/24"
availability_zone = "us-east-1a"
route_table_cidr  = "0.0.0.0/0"

security_cidr_blocks = ["0.0.0.0/0"]

tags = {
  Project = "Demo"
  Owner   = "dev-team"
}
