terraform {
  cloud {
    organization = "mons_vt"

    workspaces {
      name = "develop"
    }
  }

    required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }

}

provider "aws" {
  alias = "ew2"
  region     = "eu-west-2"
}

provider "aws" {
  alias = "en1"
  region = "eu-north-1"
}

provider "aws" {
  alias = "aps1"
  region = "ap-south-1"
}