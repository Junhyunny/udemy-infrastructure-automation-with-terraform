
resource "aws_instance" "example" {
  ami           = lookup(var.AMIS, var.AWS_REGION)
  instance_type = "t2.micro"

  # terraform을 실행하는 로컬 머신에 생기는 데이터
  provisioner "local-exec" {
    command = "echo ${aws_instance.example.private_ip} >> private_ips.txt"
  }
}

# 컨테이너 실행 후 결과를 받을 수 있는 커맨드
output "ip" {
  value = aws_instance.example.public_ip
}