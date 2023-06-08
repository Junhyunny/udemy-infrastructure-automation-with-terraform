
## Chapter065. Terraform Project Structure

* When starting with terraform on production environments, you quickly realize that you need a decent project structure
* Ideally, you want to seperate your development and production environments completely
    * That way, if you always test terraform changes in development first, mistakes will be caught before they can have a production impact
    * For complete isolation, it is best to create multiple AWS accounts, and use one account for dev, another for prod, and a third one for billing
    * Splitting out terraform in multiple projects will also reduce the resources that you will need to manage during one terraform apply