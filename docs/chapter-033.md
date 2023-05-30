
## Chapter033. Introduction to VPCs - Part 3

* Every availability zone has its own public and private subnet
* Instances started in subnet main-public-3 will have IP address `10.0.3.x`
    * will be launched in the eu-west-1c availability zone
    * Amazon calls 1 datacenter an availability zone
* All the public subnets are connected to an internet gateway.
* These instances will also have a public IP address, allowing them to be reachable from the internet
* Instances launched in the private subnets do not get a public IP address
* So they will not be reachable from the internet
* Instances from main-public can reach instances from main-private, because they are all in the same VPC.
* This of course if you set the firewall to allow traffic from one to another.
* Typcially, you use the public subnets for internet-facing services / applications.
* Database, caching services and backends all go into the private subnets
* If you use a load balancer(LB), you will typically put the LB in the public subnets and the instances serving an application in the private subnets.
