provider "aws" {
  region = var.region
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.33"
    }
  }

  backend "s3" {
    bucket = "terraform-state"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}

module "vpc" {
  source = "./modules/vpc"

  env               = var.env
  vpc_cidr          = var.vpc_cidr
  subnet_cidr       = var.subnet_cidr
  availability_zone = var.availability_zone
  route_table_cidr  = var.route_table_cidr
}

module "ec2" {
  source = "./modules/ec2"

  env                  = var.env
  instance_type        = var.instance_type
  vpc_id               = module.vpc.vpc_id
  subnet_id            = module.vpc.subnet_id
  security_cidr_blocks = var.security_cidr_blocks
}

module "s3" {
  source = "./modules/s3"

  env           = var.env
  bucket_prefix = var.bucket_prefix
}