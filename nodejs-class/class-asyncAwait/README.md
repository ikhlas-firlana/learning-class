# The Way async / await
Before you learn more about async await, i think you should know promise. 

## Promise 

library for help asynchrounus proses keep on track. promise use `then` for continue process asynchronus. the way use promise name as `chaining method`. 

```nodejs
one() => {
    return Promise((resolve) => {
        resolve(1);
    });
}
two() => {
    return Promise((resolve) => {
        resolve(2);
    })
}

one() 
    .then((x) => {
        console.log(x);
        return two();
    })
    .then((y) => {
        console.log(y);
    }); // <= this way is method chaining 
```

there are some case if its recognize as promise. with returning function `Promise.resolve(...)`

```
new Promise((resolve, reject) => {
    console.log("HELLO WORLD!")
    return Promise.resolve(1)
})
.then((i) => {
    console.log("inside i is ", i)
})
```

example code [here](test-promise.js)

## Async Await

...