terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.86.0"
    }
  }
}
# Configure the AWS Provider
provider "aws" {
  region = "eu-west-1"
}