# 1. Require the AWS Provider plugin
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# 2. Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

# 3. Define a test resource (An AWS S3 Bucket)
resource "aws_s3_bucket" "my_test_bucket" {
  bucket = "mathur12345" # Change this name to be globally unique
}
