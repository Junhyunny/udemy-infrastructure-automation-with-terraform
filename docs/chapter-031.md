
## Chapter031. Introduction to VPCs

* On Amazon AWS, you have a default VPC(Virtual Private Network) created for you by AWS by launch instances in 
* Up until now we used this default VPC
* VPC isolated the instances on a network level
    * it is like your own private network in the cloud
* Best practice is to always launch your instances in a VPC
    * the default VPC
    * or one you create yourself(managed by terraform)
* There is also `EC2-Classic` which is basically one big network where all AWS customers could launch their instances in
* For smaller to medium setups, one VPC(per region) will be suitable for your needs
* An instance launched in one VPC can never communicate with an instance in an other VPC using their private IP addresses
    * They could communicate still, but using their public IP(not recommended)
    * You could also link 2 VPCs, called peering
