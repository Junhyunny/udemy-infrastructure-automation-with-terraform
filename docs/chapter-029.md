
## Chapter029. Terraform Commands Overview

* Terraform is very much focussed on the resource definitions
* It has a limited toolset available to modify, import, create these resource definitions
    * Still, every new release there are new features coming out ot make it easier to handle your resources

| command | desription |
|:-:|:-|
| terraform apply | applies state |
| terraform destroy | destroys all terraform managed state | 
| terraform fmt | rewrite terraform configuration files to a canonical format and style | 
| terraform get | download and update modules |
| terraform graph | create a visual representation of a configuration or execution plan | 
| terraform import [options] ADDRESS ID | import will try and find the infrastructure resource identified with ID and import the state into terraform `.tfstate` with resource id ADDRESS | 
| terraform output | output any of your resources. using NAME will only output a specific resource | 
| terraform plan | terraform plan, show the changes to be made to the infrastructure |
| terraform push | push changes to atlas, Hashicorp's Enterprise tool that can automatically run terraform from a centralized server | 
| terraform refresh | refresh the remote state. can identify differences between state file and remote state | 
| terraform remote | configure remote state storage | 
| terraform show | show human readable output from a state or a plan | 
| terraform state | use this command for advanced state management(e.g. rename a resource with terraform state `mv aws_instance.example aws_instance.production`) | 
| terraform taint | manually mark a resource as tainted, meaning it will be destructed and recreated at the next apply |
| terraform validate | validate your terraform syntax |
| terraform untaint | undo a taint | 
