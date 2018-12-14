## Getting started
Elixir start with cli `iex`
```
iex
```

then go operation mathematic
```
1+1
2*2
5/2
3+3 == 7
```

then try type 
```
String.length("itsy bitsy spider, went up to water sprout.")
```

## Basic Data
### integers
```
255
```
### floats
```
3.14
1.0e-10
```
### booleans
```
true
false
```
### Atoms
An atom is a constant whose name is its value. it think similiar with ENUM in Java
```
:foo
:foo == :bar
```
same like `true` and `false`
```
true |> is_atom
:true |> is_boolean
:true === true
```
including `MyApp.MyModule`
```
is_atom(MyApp.MyModule)
```
### strings

```
"Hello"
"dziękuję"
```

## Basic Operations
### Arithmetic
```
2 + 2
2 / 2
```
using modul
```
div(10, 5)
rem(10, 3)
```
### Boolean
Elixir provides the `||`, `&&`, and `!` boolean operators
```
-20 || true
42 && true
!42
!false
```

### Comparison
Elixir comes with all the comparison operators we’re used to: `==`, `!=`, `===`, `!==`, `<=`, `>=`, `<`, and `>`.

```
1 > 2
1 != 2
2 == 2
2 <= 3
```

strict comparison of integers and floats, use `===`:
```
2 == 2.0
2 === 2.0
```

### String Interpolation
```
name = "Sean"
"Hello #{name}"
```

### String Concatenation
```
name = "Sean"
"Hello " <> name
```

