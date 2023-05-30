
## Chapter041. Static IPs and DNS

* private IP addresses will be auto-assigned to EC2 instances
* every subnet within the VPC has its own range
    * e.g. 10.0.1.0 - 10.0.1.255
* by specifying the private IP, you can make sure the EC2 instance always uses the same IP addresses
* to use a public IP address, you can use EIPs(Elastic IP addresses)
* this is a public static IP address that you can attach to your instance

* Route53
    * typically you will not use IP addresses but hostnames
    * this is where route53 comes in
    * you can host a domain name on AWS using `Route53`
    * you first need to register a domain name using AWS or any accreited registrar
    * you can create a zone in Route53 and add DNS records
