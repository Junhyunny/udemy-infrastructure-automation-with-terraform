terraform {
  backend "s3" {
    bucket = "test-terraform-seoul"
    key = "terraform/chapter-021"
    region = "us-east-1"
  }
}