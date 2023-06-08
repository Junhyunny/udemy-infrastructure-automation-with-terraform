module "main-vpc" {
  source     = "../modules/vpc"
  ENV        = var.ENV
  AWS_REGION = var.AWS_REGION
}

module "instances" {
  source         = "../modules/ec2"
  ENV            = var.ENV
  PATH_TO_PRIVATE_KEY = var.PATH_TO_PRIVATE_KEY
  VPC_ID         = module.main-vpc.vpc_id
  PUBLIC_SUBNETS = module.main-vpc.public_subnets
}