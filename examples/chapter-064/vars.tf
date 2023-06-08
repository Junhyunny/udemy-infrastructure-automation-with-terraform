variable "AWS_REGION" {
  type    = string
  default = "us-east-1"
}
variable "AWS_ACCESS_KEY" {

}
variable "AWS_SECRET_KEY" {

}
variable "AWS_SESSION_TOKEN" {

}
variable "ports" {
  type = map(list(string))
  default = {
    "22"  = ["127.0.0.1/32", "192.168.0.0/24"]
    "443" = ["0.0.0.0/0"]
  }
}
