async function ThisAsync() {
    return new Promise((resolve) => {
        setTimeout(() => {
            const msg = "Hello this delay response";
            // console.log(msg);
            resolve(msg);
        }, 2000);
    });
}

async function ThisSecondAsync() {
    return new Promise((resolve) => {
        setTimeout(() => {
            const msg = "Hello this delay response second message";
            // console.log(msg);
            resolve(msg);
        }, 2000);
    });
}

async function ThisThirdAsync() {
        return await setTimeout(() => {
            const msg = "Hello this delay response third message";
            // console.log(msg);
            return msg;
        }, 2000);
}

async function ThisFourthAsync() {
    return new Promise((resolve) => {
        setTimeout(() => {
            const msg = "Hello this delay response Fourth message";
            // console.log(msg);
            resolve(msg.test); // conditional not error
            // resolve(msg.test.error); conditional error
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

async function ThisSevenAsync() {
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

async function main() {
    try {
        const isi_1 = await ThisAsync();
        console.log("isi ke 1 ", isi_1);
        const isi_2 = await ThisSecondAsync();
        console.log("isi ke 2 ", isi_2);
        const isi_3 = await ThisThirdAsync();
        console.log("isi ke 3 ", isi_3);
        const isi_4 = await ThisFourthAsync();
        console.log("isi ke 4 ", isi_4);
        const isi_5 = ThisFifthNotAsync();
        console.log("isi ke 5 ", isi_5);
        const isi_6 = ThisSixthNotAsync();
        console.log("isi ke 6 ", isi_6);
        const isi_7 = await ThisSevenAsync();
        console.log("isi ke 7 ", isi_7);
        const isi_8 = ThisEightNotAsync();
        console.log("isi ke 8 ", isi_8);
    } catch (e) {
        console.log("[ERROR]");
        console.error(e);
    }
}
main();