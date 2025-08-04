terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region     = var.aws_region_1
  access_key = "INPUT_YOUR_ACCESS_KEY"
  secret_key = "INPUT_WITH_YOUR_SECRET_KEY"
}

