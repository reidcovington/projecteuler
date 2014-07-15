// # If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

// # Find the sum of all the multiples of 3 or 5 below 1000.

array = [];
arrayLength = 1000;
for ( var i = 0; i < arrayLength; i++ ){
  if ( i % 3 === 0) {
    array.push(i);
  } else if ( i % 5 === 0){
    array.push(i);
  }
}
sum = 0;
for ( var i = 0; i < array.length; i++ ){
  sum += array[i];
}
