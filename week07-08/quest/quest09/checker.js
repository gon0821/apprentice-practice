console.log('Hello World');

function checkTemperature(temp) {
  if (temp >= 30) {
    console.log('Hot');
  } else if (temp >= 15) {
    console.log('Warm');
  } else {
    console.log('Cold');
  }
}

checkTemperature(30);
checkTemperature(15);
checkTemperature(-50);
checkTemperature(-0.5);


function checkOddOrEven(num) {
  if (num % 2 === 1) {
    console.log('Odd');
  } else if (num % 2 === 0) {
    console.log('Even');
  } else {
    console.log('Not integer.')
  }
}

checkOddOrEven(23);
checkOddOrEven(0);
checkOddOrEven(1);
checkOddOrEven(1.5);
checkOddOrEven(2.0);
