const scores = [
  [6, 3],
  [9, 0],
  [0, 3],
  [8, 2],
  [7, 3],
  [10, null],
  [9, 1],
  [8, 0],
  [10, null],
  [10, 6, 4],
  // [10, null],
  // [10, null],
  // [10, null],
  // [10, null],
  // [10, null],
  // [10, null],
  // [10, null],
  // [10, null],
  // [10, null],
  // [10, 10, 10],
];
(() => {
  let total_score = 0;

  for (let i = 0; i < scores.length; i++) {
    // ストライク
    const strike = scores[i][0] === 10;
    //スペア
    const spare = scores[i][0] + scores[i][1] === 10 && !strike;

    //スペアのスコア処理
    if (spare) {
      try {
        scores[i][1] = scores[i][1] + scores[i + 1][0];
      } catch {
        scores[i][1] = scores[i][1] + scores[i][2];
      }
    }

    // ストライクスコア処理
    // 9フレーム目まで
    if (scores[i + 1]) {
      // ストライク連発
      if (strike && scores[i + 1][0] === 10) {
        try {
          scores[i][0] = 20 + scores[i + 2][0];
        } catch {
          // 9フレーム目
          scores[i][0] = 20 + scores[i + 1][1];
        }
      } else if (strike) {
        //ストライク単発
        scores[i][0] = 10 + scores[i + 1][0] + scores[i + 1][1];
      }
    }
    //10フレーム目
    else if (scores[9]) {
      if (strike) {
        scores[i][1] = scores[i][1] + scores[i][2];
      }
    }

    total_score += scores[i][0] + scores[i][1];

    console.log(total_score);
  }
})(scores);
