# Enum
A set of algorithms for enumerating over enumerables.

`FYI :`
The Enum module includes over 70 functions for working with enumerables. All the collections that we learned about in the previous lesson, with the exception of tuples, are enumerables.

you can start with `iex 1-show-module.ex`
it will print modules available

## all?
the entire collection must evaluate to `true` otherwise `false` will be returned:
```
Enum.all?(["foo", "bar", "hello"], fn(s) -> String.length(s) == 3 end)
Enum.all?(["foo", "bar", "hello"], fn(s) -> String.length(s) > 1 end)
```

## any?
Unlike the above, `any?/2` will return `true` if at least one item evaluates to `true`:

```
Enum.any?(["foo", "bar", "hello"], fn(s) -> String.length(s) == 5 end)
```

## chunk_every
If you need to break your collection up into smaller groups, `chunk_every/2` is the function you’re probably looking for:
```
Enum.chunk_every([1, 2, 3, 4, 5, 6], 2)
```

## chunk_by
If we need to group our collection based on something other than size, we can use the `chunk_by/2` function. It takes a given enumerable and a function, and when the return on that function changes a new group is started and begins the creation of the next:
```
Enum.chunk_by(["one", "two", "three", "four", "five"], fn(x) -> String.length(x) end)
Enum.chunk_by(["one", "two", "three", "four", "five", "six"], fn(x) -> String.length(x) end)
```

## map_every

Sometimes chunking out a collection isn’t enough for exactly what we may need. If this is the case, `map_every/3` can be very useful to hit every `nth` items, always hitting the first one:
```
Enum.map_every([1, 2, 3, 4, 5, 6, 7, 8], 3, fn x -> x + 1000 end)
```

## each
It may be necessary to iterate over a collection without producing a new value, for this case we use `each/2`:
```
Enum.each(["one", "two", "three"], fn(s) -> IO.puts(s) end)
```

## map
```
Enum.map([0, 1, 2, 3], fn(x) -> x - 1 end)
```

## min
min/1 finds the minimal value in the collection:
```
Enum.min([5, 3, 0, -1])
```

## max

max/1 returns the maximal value in the collection:
```
 Enum.max([5, 3, 0, -1])
```

## filter
```
Enum.filter([1, 2, 3, 4], fn(x) -> rem(x, 2) == 0 end)
```

## reduce

With `reduce/3` we can distill our collection down into a single value. To do this we supply an optional accumulator (10 in this example) to be passed into our function; if no accumulator is provided the first element in the enumerable is used:
```
Enum.reduce([1, 2, 3], 10, fn(x, acc) -> x + acc end)
Enum.reduce([1, 2, 3], fn(x, acc) -> x + acc end)
Enum.reduce(["a","b","c"], "1", fn(x,acc)-> x <> acc end)
```

## sort
Sorting our collections is made easy with not one, but two, sorting functions.

```
Enum.sort([5, 6, 1, 3, -1, 4])
Enum.sort([:foo, "bar", Enum, -1, 4])
```

## uniq_by
We can use uniq_by/2 to remove duplicates from our enumerables:
```
 Enum.uniq_by([1, 2, 3, 2, 1, 1, 1, 1, 1], fn x -> x end)
```