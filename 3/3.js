// // The prime factors of 13195 are 5, 7, 13 and 29.

// What is the largest prime factor of the number 600851475143 ?

function findLargestPrime(integer){
  var factorArray = [];
  for(var i = 2; i < integer; i++){
    if(integer % i === 0){
      factorArray.push(i);
    }
  }
  largestFactor = factorArray[factorArray.length - 1];
  for(var x = 0; x < factorArray.length; x++){
    for(var i = 2; i < largestFactor + 1; i++){
      if(i != factorArray[x] && factorArray[x] % i === 0){
        factorArray.splice(x, 1)[0];
        x -= 1;
        i = largestFactor;
      }
    }
  }
  return factorArray[factorArray.length - 1]
}

findLargestPrime(600851475143)
// => 6857
