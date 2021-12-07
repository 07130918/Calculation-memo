// function 高階関数(コールバック関数) {
//     処理
//     コールバック関数();
// }

const overTen = (callBackFn, num) => {
    if (num > 10) {
        callBackFn(num);
    } else {
        console.log(`${num}は10以下です。`)
    }
}

function printConsole(num) {
    console.log(num);
}

overTen((num) => {
    console.log(num)
}, 11);

overTen(function(num) {
    console.log(num)
}, 12);

overTen(printConsole, 100);
overTen(printConsole, 8);


// コンソールに貼り付けて試してみる◎
function unfollow() {
    console.log("フォローを外しました。")
}

function cancelTweet() {
    console.log("ツイートをキャンセルしました。")
}

function confirmed(callBackFn) {
    if (window.confirm("実行しますか?")) {
        callBackFn();
    }
}

// confirmed(unfollow);
// confirmed(cancelTweet);
confirmed(() => {
    console.log("あろー!");
});
