resource "aws_s3_bucket" "terraform-mybucket" {
  bucket = "terraform-mybucket-128casdjk"
#   region = "us-east-1"

  tags = {
    Name = "terraform-mybucket-128casdjk"
  }
}