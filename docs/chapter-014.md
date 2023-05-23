
## Chapter014. Software Provisioning

* There are 2 ways to provision software on your instances
* You can build your own custom AMI and bundle your software with the image
    * Packer is a great tool to do this
* Another way is to boot standardized AMIs, and then install the software on it you need
    * Using file uploads
    * Using remote exec
    * Using automation looks like chef, puppet, ansible
* Q4 2016 state for terraform with automation
    * Chef is integrated within terraform
    * Puppet agent using remote-exec
    * Ansible - output the IP addresses then run ansible-playbook on those hosts
        * This can be automated in a workflow script
        * There are 3rd party initiatives integrating Ansible with Terraform

* File uploads
    * File Uploads is an easy way to upload a file or a script
    * Can be used in conjunction with remote-exec to execute a script
    * The provisioner may use SSH or WinRM
    * To override the SSH defaults, you can use "connection"
        * when spinning up instances on AWS
            * `ec2-user` is the default user for Amazon Linux 
            * `ubuntu` is the default user for Ubuntu Linux
        * Typically on AWS, you will use SSH keypairs
    * After you uploaded a script, you will want to execute it
        * execute a script using `remote-exec`
