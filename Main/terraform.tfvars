region = "us-east-1"
env    = "dev"

vpc_cidr          = "10.0.0.0/16"
subnet_cidr       = "10.0.10.0/24"
availability_zone = "us-east-1a"
route_table_cidr  = "0.0.0.0/0"

instance_type = "t2.micro"

security_cidr_blocks = ["159.153.171.6/32"]