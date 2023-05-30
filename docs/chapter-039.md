
## Chapter039. Userdata

* Userdata in AWS can be used to do any customization at launch
    * You can install extra software
    * Prepare the instance to join a cluster
        * e.g. consul cluster, ECS cluster(docker orchestration)
    * Execute commands / scripts
    * Mount volumes
* Userdata is only execute at the creation of the instance, not when the instance reboots
* Terraform allows you to add userdata to the aws_instance resource
    * just as a string for simple commands
    * using templates for more complex instructions
