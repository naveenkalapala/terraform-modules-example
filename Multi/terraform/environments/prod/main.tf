module "vpc" {
  source = "../../modules/vpc"

  env               = var.env
  vpc_cidr          = var.vpc_cidr
  subnet_cidr       = var.subnet_cidr
  availability_zone = var.availability_zone
  route_table_cidr  = var.route_table_cidr
}

module "ec2" {
  source = "../../modules/ec2"

  env                  = var.env
  instance_type        = var.instance_type
  subnet_id            = module.vpc.subnet_id
  vpc_id               = module.vpc.vpc_id
  security_cidr_blocks = var.security_cidr_blocks
  tags                 = var.tags
}
