provider "aws" {
  region = var.aws_region
}

module "ec2module" {
  source        = "./ec2"
  ec2_name      = "name from module"
  instance_type = var.instance_type
  ami_id        = var.ami_id
}