# datasource를 사용해서 특정 IP/PORT 대역의 security group 생성
data "aws_ip_ranges" "us_ec2" {
  regions  = ["us-east-1", "us-west-1"]
  services = ["ec2"]
}

# VPC security group 만드는 것이 가능
resource "aws_security_group" "from_us" {
  name = "from_us"

  ingress {
    from_port = "443"
    to_port   = "443"
    protocol  = "tcp"
    # inbound rule 50개 생성
    cidr_blocks = slice(data.aws_ip_ranges.us_ec2.cidr_blocks, 0, 50)
  }
  tags = {
    CreateDate = data.aws_ip_ranges.us_ec2.create_date
    SyncToken  = data.aws_ip_ranges.us_ec2.sync_token
  }
}