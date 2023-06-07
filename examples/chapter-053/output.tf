output "ELB" {
  value = aws_elb.my-elb.dns_name
}

output "EC2_PUBLIC_IP" {
  value = aws_launch_configuration.example-launchconfig.associate_public_ip_address
}
