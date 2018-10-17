async function ThisAsync() {
    return new Promise((resolve) => {
        setTimeout(() => {
            const msg = "Hello this delay response";
            console.log(msg);
            resolve(msg);
        }, 2000);
    });
}

async function ThisSecondAsync() {
    return new Promise((resolve) => {
        setTimeout(() => {
            const msg = "Hello this delay response second message";
            console.log(msg);
            resolve(msg);
        }, 2000);
    });
}

async function main() {
    await ThisAsync();
    await ThisSecondAsync();
}
main();