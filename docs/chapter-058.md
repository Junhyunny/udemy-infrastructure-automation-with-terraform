
## Chapter058. Conditionals

* Interpolations may contain conditionals(if-else)
* The syntax is

```
CONDITION ? TRUEVAL : FALSEVAL
```

* example

```
resource "aws_instance" "myinstance" {
    ...
    count = "${var.env == "prod" ? 2 : 1}"
}
```

* the support operators are
    * equality 
        * == and !=
    * numerical comparison
        * >, <, >=, <=
    * boolean logic
        * &&, ||, unary !
