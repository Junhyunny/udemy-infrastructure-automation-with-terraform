resource "aws_ebs_volume" "example" {
  availability_zone = "${var.AWS_REGION}a"
  size              = 8
  tags              = { for key, value in merge({ Name = "Myvolume" }, var.project_tags) : key => lower(value) }
}