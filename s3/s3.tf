resource "aws_s3_bucket" "s3_tf" {
  bucket = "anshuman-tf-test-bucket"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}