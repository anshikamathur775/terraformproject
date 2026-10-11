provider "aws" {
  region = "us-east-1"
}
module "ec2_instance" {
  source = "./modules/ec2_instance"
  ami_value = "ami-0d27e0fb3bac4d724" # Example AMI ID
  instance_type_value = "t3.micro" # Example instance type
}