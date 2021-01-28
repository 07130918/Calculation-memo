// // 4乗的ガウス
// for (let i = (r = 0); i <= 80; r += (i++) ** 4);
// console.log(r);

// var list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
// console.log(list[list.length - 2]);

// var counter = 0;
// while (true) {
//   counter++;
//   if (counter < 11) {
//     break;
//   }
// }
// console.log(counter);

for (let i = 1; i <= 10; i++) {
  let yakusuu = 0;
  for (let j = 1; j <= i; j++) {
    if (i % j == 0) {
      yakusuu++;
    }
  }
  if (yakusuu == 2) {
    console.log(i);
  }
}

// let height = 175; //身長 cm
// let weight = 70; //体重 kg
// height = height / 100;
// let bmi = weight / (height * height);
// console.log(bmi)
// console.log(Math.round(bmi*10)/10)
