
## Chapter018. Outputting attributes

* Terraform keeps attributes of all the resources you create
    * a.g. aws_instance resource has the attribute public_ip
* Those attribute can be queried and outputted
* This can be useful just to output valuable information or to feed information to external software

* refer to any attribute by specifying the following elements in your variable
    * resource type - aws_instance
    * resource name - example
    * attribute name - public_ip

```tf
resource "aws_instance" "example" {
    ami = "${lookup(var.AMIS, var.AWS_REGION)}"
    instance_type = "t2.micro"
}

output "ip" {
    value = "${aws_instance.example.public_ip}"
}
```

* use the attribute in a script
    * useful for instance to start automation scripts after infrastructure provisioning
    * populate the IP addresses in an ansible host file
    * execute a script(with attribute as argument) which will take care of a mapping of resource name and the IP address

```tf
resource "aws_instance" "example" {
    ami = "${lookup(var.AMIS, var.AWS_REGION)}"
    instance_type = "t2.micro"
    provisioner "local-exec" {
        command = "echo ${aws_instance.example.private_ip} >> private_ips.txt"
    }
}
```
