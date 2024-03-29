provider "aws" {}


resource "aws_s3_bucket" "b" {
  bucket = "dannybucket99sss9"
  acl    = "private"

  tags = {
    Name        = "danny bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_object" "test1" {
  bucket  = aws_s3_bucket.b.id
  key     = "test1.txt"
  content = timestamp()
}

resource "aws_s3_bucket_object" "test2" {
  bucket  = aws_s3_bucket.b.id
  key     = "test2.txt"
  content = timestamp()
}
