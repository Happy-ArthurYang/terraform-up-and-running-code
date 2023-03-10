terraform {
  required_version = ">= 1.0.0, < 2.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }


}

provider "aws" {
  region = "us-east-1"
}

data "aws_subnets" "selected" {
  filter {
      name   = "vpc-id"
      values = ["vpc-0b8f641e742914497"]
}
}