
## Chapter057. Introduction to Interpolation

* In Terraform, you can interpolate other values, using ${...}
* You can use simple math functions, refer to other variables or use conditions
* I have been using then already throughout the course without naming them
    * e.g. variables - ${var.VARIABLE_NAME}
    * e.g. resources - ${aws_instance.name.id}
    * e.g. data source - ${data.template_file.name.rendered}

* Interpolation - variables

| name | sytax | example |
|:-:|:-:|:-:|
| String variable | var.name | ${var.SOMETHING} |
| Map variable | var.MAP['key'] | ${var.AMIS["us-east-1"]} / ${lookup(var.AMIS, var.AWS_REGION)} |
| List variable | var.LIST, var.LIST[i] | ${var.subnets[i]} / ${join(",", var.subnets)} |

* Interpolation - various

| name | sytax | example |
|:-:|:-:|:-:|
| Outputs of a module | module.NAME.output | ${module.aws_vpc.vpcid} |
| Count information | count.FIELD | ${count.index} |
| Path information | path.TYPE | path.cwd(current dir) / path.module(module path) / path.root(root module path) |
| Meta information | terraform.FIELD | terraform.env shows active workspace |

* Math
    * add(+), substract(-), multiply(*), divide(/) for float types
    * add(+), substract(-), multiply(*), divide(/), modulo(%) for integer types
    * e.g. ${2 + 3 * 4} results in 14
