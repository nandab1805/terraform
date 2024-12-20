terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.31.0" #Aws provider function not terraform
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

