provider aws {
  region = "us-east-1"
}

resource "aws_instance" "anshikaaaa" {
  ami = "ami-0d27e0fb3bac4d724"
  instance_type = "t3.micro"
  }
  resource "aws_s3_bucket" "s3_bucket" {
  bucket = "anshika-terraform"
}
resource "aws_dynamodb_table" "terraform_lock" {
  name         = "terraform-lock"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}
