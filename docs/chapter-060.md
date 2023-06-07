
## Chapter060. Built-in Functions

* You can use built-in functions in your terraform resources
* The functions are called with the syntax `name(arg1, arg2, ...)` and wrapped with `${...}`
    * e.g. ${file("mykey.pub")} would read the contents of the public key file

| function | description | example |
|:-:|:-:|:-:|
| basename(path) | returns the file name(last element) of a path | basename("/home/junhyunny/file.txt") returns file.txt |
| coalesce(string1, string2, ...) | returns the first non-empty value | coalesce("", "", "hello") |
| coalescelist(list1, list2, ...) | returns the first non-empty list | coalescelist([], [], ["hello"]) |
| element(list, index) | returns a single element from a list at the given index | element(module.vpc.public_subnets, count.index) |
| format(format, args, ...) | formats a string according to the given format | format("server-%03d", count.index + 1) returns server-001, server-002 |
| formatlist(format, args, ...) | formats a list according to the given format | ? |
| index(list, element) | finds the index of a given element in a list | index(aws_instance.foo.*.tags.Env, "prod") |
| join(delim, list) | joins a list together with a delimiter | join(",", var.AMIS) returns "ami-123, ami-456, ami-789" |
| list(item1, item2, ...) | create a new list | list("a", "b", "c") |
| lookup(map, key, [default]) | lookup on a map using key. returns value representing key in the map | lookup(map("k", "v"), "k", "not found") returns "v" |
| lower(string) | returns lowercase value of string | lower("Hello") returns hello |
| map(key, value, ...) | returns a new map using key:value | map("key1", "value1", "key2", "value2") returns {"key1" = "value1", "key2" = "value2"} |
| merge(map1, map2, ...) | merges maps (union) | merge(map("key1", "value1"), map("key2", "value2")) returns {"key1" = "value1", "key2" = "value2"} |
| replace(string, search, replace) | a search and replace on string | replace("aaab", "a", "b") returns bbbb |
| split(delim, string) | splits a string into a list | split(",", "a,b,c,d") returns ["a", "b", "c", "d"] |
| substr(string, offset, length) | extract substring from string | substr("abcde", -3, 3) returns "cde" | 
| timestamp() | returns RFC3339 timestamp | timestamp() returns 2018-06-16T18:46:46Z |
| upper(string) | returns uppercased string | upper("string") returns STRING |
| uuid() | returns uuid string in RFC 4122 v4 format | ? | 
| values(map) | returns values of a map | values(map("key1", "value1", "key2", "value2")) returns ["value1", "value2"] |