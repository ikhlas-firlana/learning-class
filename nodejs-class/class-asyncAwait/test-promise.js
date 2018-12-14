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
            // console.log(msg);
            resolve(msg);
        }, 2000)
    });
}


function ThisThirdAsync() {
    return setTimeout(() => {
        const msg = "Hello this delay response third message";
        console.log(msg);
        return msg;
    }, 2000);
}

function ThisFourthAsync() {
    return new Promise((resolve) => {
        setTimeout(() => {
            const msg = "Hello this delay response Fourth message";
            // console.log(msg.test);
            resolve(msg.test); // conditional not error
        }, 2000);
    });
}

function ThisFifthNotAsync() {
    setTimeout(() => {
            const msg = "Hello this delay response Fifth message";
            console.log(msg);
        }, 3000);
}

function ThisSixthNotAsync() {
    setTimeout(() => {
            const msg = "Hello this delay response Sixth message";
            console.log(msg);
        }, 2000);
}

function ThisSevenAsync() {
    return new Promise((resolve) => {
        setTimeout(() => {
            const msg = "Hello this delay response Seven message";
            console.log(msg);
            resolve(msg);
        }, 2000);
    });
}

function ThisEightNotAsync() {
    setTimeout(() => {
            const msg = "Hello this delay response Eight message";
            console.log(msg);
        }, 2000);
}

ThisAsync()
.then(() => {
    return ThisSecondAsync();
})
.then((msg) => {
    console.log(msg);
    return ThisThirdAsync();
})
.then(() => {
    return ThisFourthAsync();
})
.then((msg) => {
    console.log(msg); // conditional not error
    // console.log(msg.test); // conditional error
})
.then(() => {
    ThisFifthNotAsync();
})
.then(() => {
    // return ThisSixthNotAsync(); // this will be broke the chain
    ThisSixthNotAsync();
})
.then(() => {
    return ThisSevenAsync();
})
.then(() => {
    ThisEightNotAsync();
})
.catch((err) => {
    console.log("[ERROR]");
    console.error(err);
})