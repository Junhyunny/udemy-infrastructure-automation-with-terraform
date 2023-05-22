
## Chapter012. Terraform Variable Types

* Terraform variable were complete reworked for the terraform 0.12 release
* more control over the variables
    * for and for-each loops
* don't have to specify the type in variables - but recommended
* Terraform's simple variable types
    * string
    * number
    * bool
* Terraform's complex variable types
    * list(`element_type`)
    * set(`element_type`)
    * map(`value_element_type`)
    * object({`att_name` = `type`, ...})
    * tuple([`type`, ...])

* characteristics
    * list
        * always ordered
    * set
        * like a list
        * doesn't keep the order
        * only contain unique values
    * object
        * like a map
        * each element can have a different type
    * tuple
        * like a list
        * each element can have a different type
        * e.g. [0, "string", true]
