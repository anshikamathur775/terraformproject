# 1. Specify the required AWS provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

# 2. Configure the AWS Provider
provider "aws" {
  region = "us-east-1" 
}

# 3. Define the EC2 Instance
resource "aws_instance" "mathurec2" {
  # Dynamically fetches the latest Amazon Linux 2023 AMI via SSM
  ami           = "resolve:ssm:/aws/service/ami-amazon-linux-latest/al2023-ami-kernel-default-x86_64"
  instance_type = "t3.micro"

  tags = {
    Name = "mathurec2"
  }
}
