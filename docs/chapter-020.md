
## Chapter020. Remote state

* Terraform keeps the remote state of the infrastructure
* It stores it in a file called terraform.tfstate
* There is also a backup of the previous state in terraform.tfstate.backup
* When you execute terraform apply 
    * a new terraform.tfstate and backup is written
* This is how terraform keeps track of the remote state
    * if the remote state changes and you hit terraform apply again, terraform will make changes to meet the correct remote state again
    * e.g. you terminate an instance that is managed by terraform, after terraform apply it will be started again
* You can keep the terraform.tfstate in version control
    * e.g. git 
* It gives you a history of your terraform.tfstate file
    * it is a just big JSON file
* It allows you to collaborate with other team members
    * Unfortunately you can get conflicts when 2 people work at the same time
* Local state works well in the beginning, but when you project becomes bigger, you might want to store your state remote
* The terraform state can be saved remote, using the backend functionality in terraform
* The default is a local backend(the local terraform state file)
* Other backends include
    * S3(with a locking mechanism using dynamoDB)
    * consul(with locking)
    * terraform enterprise(commercial solution)
* Using the backend functionality has definitely benefits
    * Working in a team
        * it allows for collaboration
    * the remote state will always be available for the whole team
    * the state file is not stored locally
    * possible sensitive information is now only stored in the remote state
    * some backends will enable remote operations
    * terraform apply will then run completely remote
    * these are called the enhanced backends

* There are 2 steps to configure a remote state
    * add the backend code to a `.tf` file
    * Run the initialization process

* To configure a consul remote store, you can add a file `backend.tf` with the following contents

```tf
terraform {
    backend "consul" {
        address = "demo.consul.io"
        path = "terraform/myproject"
    }
}
```

```tf
terraform {
    backend "s3" {
        bucket = "mybucket"
        key = "terraform/myproject"
        region = "eu-west-1"
    }
}
```

* When using an s3 remote state, it is best to `configure` the AWS credentials

```
$ aws configure

AWS Access Key ID []: 
AWS Secret Access Key ID []: 
...
```

* Using a remote store for the terraform state will ensure that you always have the latest version of the state
* It avoids having to commit and push terraform.tfstate to version control
* Terraform remote stores do not always upport locking
    * documentation always mentions if locking is available for a remote store
    * S3 and consul support it
* specify a (read-only) remote store directly in the `.tf` file

```tf
data "terraform_remote_state" "aws-state" {
    backend = "s3"
    config {
        bucket = "terraform-state"
        key = "terraform.tfstate"
        access_key = "${var.AWS_ACCESS_KEY}"
        secret_key = "${var.AWS_SECRET_KEY}"
        region = "${var.AWS_REGION}"
    }
}
```
