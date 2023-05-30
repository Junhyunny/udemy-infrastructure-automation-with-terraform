
## Chapter037. EBS Volumes

* The t2.micro instance with this pariticular AMI automatically adds 8GB of EBS storage
* Some instance type have local storage on the instance itself
    * This is called ephemeral storage
    * This type of storage is always loast when the instance terminates
* The 8GB EBS root volumes storage that comes with the instance is also set to be automatically removed when the instance is terminated
    * You could still instruct AWS not to do so, but that would be container-intuitive(anti-pattern)
* In most cases the 8GB for the OS(root block device) suffices
* In out next example
    * Adding an extra EBS storage volume
    * Extra Volume can be used for the log files, any real data that is put on the instance
    * That dat will be persisted until you instruct AWS to remove it
* EBS storage can be added using a terraform resource and then attached to our instance
* If you want to increase the storage or type of the root volume, you can use `root_block_device` within the aws_instance resource