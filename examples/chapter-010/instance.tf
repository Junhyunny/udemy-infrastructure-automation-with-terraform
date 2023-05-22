provider "aws" {
  access_key = "AWS_ACCESS_KEY"
  secret_key = "AWS_SECRET_KEY"
  token = "AWS_SESSION_TOKEN"
  region     = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-0889a44b331db0194"
  instance_type = "t2.micro"
}
