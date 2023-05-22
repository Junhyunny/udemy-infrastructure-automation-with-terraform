provider "aws" {

}

variable "AWS_REGION" {
  type = string
}

variable "AMIS" {
  type = map(string)
  default = {
    eu-west-1 = "my ami"
  }
}

resource "aws_instance" "example01" {
  ami = var.AMIS[var.AWS_REGION]
  instance_type	= "t2.micro"
}

resource "aws_instance" "example02" {
  ami = var.AMIS[var.AWS_REGION]
  instance_type	= "t2.small"
}

resource "aws_instance" "example03" {
  ami = var.AMIS[var.AWS_REGION]
  instance_type	= "t2.micro"
}
