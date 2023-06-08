
## Chapter062. For and For Each Loops

* starting from terraform 0.12, we can use `for` and `for_each` loops
* the for-loop features can help you to loop over variables, terraform it and output it in different formats
    * e.g. [for s in ["this is a", "list"]: upper(s)]
* loop over a list or over a map
* you can transform them by doing a calculation or a string operation
* then you can output them as a list or map
* for loops are typically used when assigning a value to an argument
    * e.g. security_groups = ["sg-12345", "sg-56789"]
        * this could be replaced by a for loop if you need to transform the input data
    * e.g. Tags = {Name = "resource name"}
        * this is a map which can be "hardcoded" or which can be the output of a for loop
* for_each loops are not used when assigning a value to an argument, but rather to repeat nested blocks
