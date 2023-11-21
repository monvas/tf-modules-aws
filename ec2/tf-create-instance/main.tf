resource "aws_instance" "this" {
  count = var.ec2_count
  ami           = var.ami
  instance_type = var.instance_type
  key_name = var.key_name
  vpc_security_group_ids = var.security_groups
  subnet_id = var.subnet_id
}

terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}