function ThisAsync() {
    return new Promise((resolve) => {
        setTimeout(() => {
            const msg = "Hello this delay response";
            console.log(msg);
            resolve(msg);
        }, 2000)
    });
}

function ThisSecondAsync() {
    return new Promise((resolve) => {
        setTimeout(() => {
            const msg = "Hello this delay response second message";
            console.log(msg);
            resolve(msg);
        }, 2000)
    });
}

ThisAsync()
.then(() => {
    return ThisSecondAsync();
})