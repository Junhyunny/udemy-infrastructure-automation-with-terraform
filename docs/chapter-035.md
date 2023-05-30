
## Chapter035. Launcing EC2 instances in the VPC

* We need a new security group for this EC2 instance
* A security group is a just like a firewall, managed by AWS
* You specify ingress(incoming) and egress(outgoing) traffic rules
* If you only want to access SSH(port 22), then you could create a security group that
    * Allows ingress port 22 on IP address range 0.0.0.0/0 (all IPs)
        * It is best practice to only allow yout work/home/office IP
    * Allow all outgoing traffic from the instance to 0.0.0.0/0 (all IPs)
* To be able to log in, the last step is to make sure AWS installs our public key pair on the instance
* Our EC2 instance already refers to a `aws_key_pair.mykey.key_name`
    * you just need to declare it in terraform

* The `mykey.pub` will be uploaded to AWS and will allow an instance to be launched with this public key installed on it
* You never upload your private key.
* You use your private key to login to the instance.