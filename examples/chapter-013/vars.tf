
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
  type = map
  default = {
    us-east-1 = "ami-0889a44b331db0194"
    us-west-2 = "ami-"
    eu-west-1 = "ami-"
  }
}