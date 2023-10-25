# Configure Terraform
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      #version = "~> 3.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region                   = "us-east-1"
  shared_credentials_files = ["~/.aws/credentials"]
  profile                  = "b3c3test01-cil-academy-c5"
}

