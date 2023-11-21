resource "aws_ec2_instance_state" "this" {
  instance_id = var.instance_id
  state       = var.state
}

terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}