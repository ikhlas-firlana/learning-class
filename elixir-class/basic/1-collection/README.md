# Collections

Lists, tuples, keyword lists, and maps.

## Lists

Lists are simple collections of values which may include multiple types; lists may also include non-unique values:

```
[3.14, :pie, "Apple"]
```

Elixir implements list collections as linked lists.

```
list = [3.14, :pie, "Apple"]
["π"] ++ list
list ++ ["Cherry"]
```

### List Concatenation
```
[1, 2] ++ [3, 4, 1]
```

### List Subtraction
```
["foo", :bar, 42] -- [42, "bar"]
```
Be mindful of duplicate values. For every element on the right, the first occurrence of it gets removed from the left:

```
[1,2,2,3,2,3] -- [1,2,3,2]
```
### Head / Tail
When using lists, it is common to work with a list’s head and tail. 
```
hd [3.14, :pie, "Apple"]
tl [3.14, :pie, "Apple"]
```

In addition to the aforementioned functions, you can use pattern matching and the cons operator `|` to split a list into head and tail. We’ll learn more about this pattern in later lessons:

```
 [head | tail] = [3.14, :pie, "Apple"]
 ```

 ## Tuples
 Tuples are similar to lists, but are stored contiguously in memory.
 ```
 {3.14, :pie, "Apple"}
 ```

 It is common for tuples to be used as a mechanism to return additional information from functions
 ```
 File.read("path/to/existing/file")
 ```

 ## Keyword lists
 Keyword lists and maps are the associative collections of Elixir. In Elixir, a keyword list is a special list of two-element tuples whose first element is an atom; they share performance with lists:
 ```
[foo: "bar", hello: "world"]
[{:foo, "bar"}, {:hello, "world"}]
 ```
 The three characteristics of keyword lists highlight their importance:

- Keys are atoms.
- Keys are ordered.
- Keys may not be unique.

For these reasons, keyword lists are most commonly used to pass options to functions.

## Maps

In Elixir, maps are the “go-to” key-value store. define a map with the `%{}`

```
map = %{:foo => "bar", "hello" => :world}
map[:foo]
```
As of Elixir 1.2, variables are allowed as map keys:
```
key = "hello"
%{key => "world"}
```
If a duplicate is added to a map, it will replace the former value:
```
%{:foo => "bar", :foo => "hello world"}
```
As we can see from the output above, there is a special syntax for maps containing only atom keys:

```
%{foo: "bar", hello: "world"}
%{foo: "bar", hello: "world"} == %{:foo => "bar", :hello => "world"}
```
In addition, there is a special syntax for accessing atom keys:
```
 map = %{foo: "bar", hello: "world"}
 map.hello
```
Another interesting property of maps is that they provide their own syntax for updates:

```
map = %{foo: "bar", hello: "world"}
%{map | foo: "baz"}
```
