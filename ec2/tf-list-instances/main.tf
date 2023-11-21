data "aws_instances" "this" {
}

terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

# data "aws_instance" "this" {
# }