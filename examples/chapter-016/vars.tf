
variable "AWS_ACCESS_KEY" {

}
variable "AWS_SECRET_KEY" {
  
}
variable "AWS_SESSION_TOKEN" {
  
}
variable "AWS_REGION" {
  default = "us-east-1"
}
variable "AMIS" {
  type = map(string)
  default = {
    us-east-1 = "ami-0261755bbcb8c4a84"
    us-west-2 = "ami-"
    eu-west-1 = "ami-"
  }
}
variable "PATH_TO_PRIVATE_KEY" {
  default = "mykey"
}
variable "PATH_TO_PUBLIC_KEY" {
  default = "mykey.pub"
}
variable "INSTANCE_USERNAME" {
  default = "ubuntu"
}