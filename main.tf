provider "aws" {
  region = "eu-central-1"
}

resource "aws_s3_bucket" "b" {
  bucket = "tf-test-bucket"
  acl    = "private"

  tags = {
    Name        = "Test"
    Environment = "Dev"
  }
}