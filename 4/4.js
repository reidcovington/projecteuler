// # A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

// # Find the largest palindrome made from the product of two 3-digit numbers.

function findPalisUpTo(integer){
  var palis = [];
  var paliDigits = [];
  var potentialPalis =  [];
  for (i = 100001; i < integer; i++){
    paliDigits = i.toString().split('');
    if ((paliDigits[0] === paliDigits[5]) && (paliDigits[1] === paliDigits[4]) && (paliDigits[2] === paliDigits[3])){
      palis.push(i);
    };
  };
  return palis
};

function findFactors(integer){
  factorArray = [];
  for (i = 2; i < integer; i++){
    if (integer % i === 0){
      factorArray.push(i);
    }
  };
  return factorArray
};








