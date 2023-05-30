
## Chapter024. Template provider

* The template provider can help creating customized configuration files
* You can build template based on varialbes from terraform resource attribute
    * e.g. a public IP address
* The result is a string that can be used as a variable in terraform
    * The string contains a template
    * e.g. a configuration file
* Can be used to create generic templates or cloud init configs
* In AWS, you can pass commands that need to be executed when the instance starts for the first time
* In AWS this is called "user-data"
* If you want to pass user-data that depends on other information in terraform, you can use the provider template
