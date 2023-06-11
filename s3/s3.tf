resource "aws_s3_bucket" "example" {
  #bucket = "airbnd-bete-1621"
  bucket = var.bucket_name # after call variable

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}