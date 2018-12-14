# Pattern Matching

allows us to match simple values, data structures, and even functions.

there basic usage like `match operator` and `pin operator`

## match operator
```
x = 1
```
then try
```
1 = x
2 = x
```
if collection

```
list = [1, 2, 3]

[1, 2, 3] = list

[] = list
```
implement in tail and head
```
[1 | tail] = list
tail
[2 | _] = list
```

implement in Tuples
```
{:ok, value} = {:ok, "Successful!"}
value
{:ok, value} = {:error}
```

## Pin Operator
```
x = 1
^x = 2
{x, ^x} = {2, 1}
x
```
..