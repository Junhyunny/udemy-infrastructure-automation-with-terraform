resource "aws_instance" "example" {
  ami                    = var.AMIS[var.AWS_REGION]
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.main-public-1.id
  vpc_security_group_ids = [aws_security_group.allow-ssh.id]
  key_name               = var.PATH_TO_PRIVATE_KEY
}