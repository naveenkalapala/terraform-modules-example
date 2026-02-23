region = "us-east-1"
env    = "Development"

# VPC Block
vpc_cidr          = "10.0.0.0/16"
subnet_cidr       = "10.0.10.0/24"
availability_zone = "us-east-1a"
route_table_cidr  = "0.0.0.0/0"

# EC2 Block
instance_type = "t2.micro"
security_cidr_blocks = ["<If you want you can use your own IP>/32"]

# S3 Bucket Block
bucket_prefix = "my-bucket"