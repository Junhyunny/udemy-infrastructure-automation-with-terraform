
## Chapter025. Templates in terraform 0.12 onwards

* The template provider from the previous lecture is a great example of an external provider
* But has been deprecated since terraform 0.12
* To use template file, this is what is different with the provider

* This is deprecated version usages

```tf
data "template_file" "my-template" {
    template = file("templates/init.tpl")

    vars {
        myip = aws_instance.database1.private_ip
    }
}

resource "aws_instance" "web" {
    
    # ...

    user_data = data.template_file.my-template.rendered
}
```

* This is a better way - 1

```tf
resouce "aws_instance" "web" {

    # ...

    user_data = templatefile("templates/init.tpl", {
        my_ip = aws_instance.database1.private_ip
    })
}
```

* This is a better way - 2

```tf
locals {
    web_vars = {
        my_ip = aws_instance.database1.private_ip
    }
}

resource "aws_instance" "web" {

    # ...

    user_data = templatefile("template/init.tpl", local.web_vars)
}
```
