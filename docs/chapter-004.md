
## Chapter004. Introduction - Terraform

* Infrastructure as code
* Automation of your infrastructure
* Keep your infrastructure in a certain state(compliant)
    * e.g. 2 web instances with 2 volumes and 1 load balancer
* Make your infrastructure auditable
    * You can keep your infrastructure change history in a version control system like GIT
* `Ansible`, `Chef`, `Puppet`, `Saltstack` have a focus on automating the installation and configuration of software
    * Keeping the machines in compliance in a certain state
* Terraform can automate provisioning of the infrastructure itself
    * e.g. Using the AWS, DigitalOcean, Azure API
    * Works well with automation software like `Ansible` to install software after the infrastructure is provisioned
