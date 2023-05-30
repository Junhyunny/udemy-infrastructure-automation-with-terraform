resource "aws_key_pair" "mykey" {
  key_name = "mykey"
  # 공개키 등록
  public_key = file(var.PATH_TO_PUBLIC_KEY)
}

resource "aws_instance" "example" {
  ami           = lookup(var.AMIS, var.AWS_REGION)
  instance_type = "t2.micro"
  key_name      = aws_key_pair.mykey.key_name

  # 파일 업로드
  provisioner "file" {
    source      = "script.sh"
    destination = "/tmp/script.sh"
  }

  # shell script 실행 
  provisioner "remote-exec" {
    inline = [
      "chmod +x /tmp/script.sh",
      "sudo sed -i -e 's/\r$//' /tmp/script.sh",
      "sudo /tmp/script.sh"
    ]
  }

  # connection using ssh
  connection {
    host = coalesce(self.public_ip, self.private_ip)
    type = "ssh"
    user = var.INSTANCE_USERNAME
    # 비공개키를 사용한 접근
    private_key = file(var.PATH_TO_PRIVATE_KEY)
  }
}
