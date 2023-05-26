console.log('Hello World');

function hasOdd(numbers) {
  let isHasOdd = false;

  for (let i = 0; i < numbers.length; i++) {
    const num = numbers[i];
    if (num % 2 === 1) {
      isHasOdd = true;
      break;
    }
  }
  console.log(isHasOdd);
}

const evenNumber = [2, 2, 8, 4];
const oddNumber = [2, 2, 3, 5];
hasOdd(evenNumber);
hasOdd(oddNumber);

function odd(numbers) {
  let array = [];

  for (let i = 0; i < numbers.length; i++) {
    const num = numbers[i];
    if (num % 2 === 1) {
      array.push(num);
    }
  }
  console.log(array);
}

const numbers = [1, 2, 3, 4, 5, 6];
odd(numbers);

function square(numbers) {
  let array = [];

  for (let i = 0; i < numbers.length; i++) {
    const num = numbers[i];
    array.push(num*num);
  }
  console.log(array);
}

square(numbers);
