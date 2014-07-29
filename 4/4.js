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
  for (k = 2; k < integer; k++){
    if (integer % k === 0){
      factorArray.push(k);
    }
  };
  return factorArray
};

function findLargestPaliWithFactors(){
  paliFactors = [];
  palis = findPalisUpTo(999999);
  for (z = 1; z < palis.length; z++){
    paliFactors = findFactors(palis[palis.length - z])
      for (j = 0; j < paliFactors.length; j++){
        if ((paliFactors[j].toString().length === 3) && (paliFactors[j+1].toString().length === 3) && (paliFactors[j] * paliFactors[j + 1] === palis[palis.length - z])){
          return palis[palis.length - z]
        };
      };
  };
};

findLargestPaliWithFactors();
// =>906609








