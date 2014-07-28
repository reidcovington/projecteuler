# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

# Find the largest palindrome made from the product of two 3-digit numbers.

def find_palindromes_up_to(integer)
  palis = []
  pali_digits = []
  potential_palis = (0..integer).to_a
  potential_palis.each do |pali|
    pali_digits = pali.to_s.split('')
    if (pali_digits[0] == pali_digits[5]) && (pali_digits[1] == pali_digits[4]) && (pali_digits[2] == pali_digits[3])
      palis << pali
    end
  end
  palis
end

def find_factors(integer)
  factor_array = []
  potential_factor_array = (2..integer).to_a
  potential_factor_array.each do |factor|
    if integer % factor == 0
      factor_array << factor
    end
  end
  return factor_array
end

def find_largest_pali_with_factors
  pali_factors = []
  palis = find_palindromes_up_to(999 * 999)
  palis.reverse.each do |pali|
    pali_factors = find_factors(pali)
    if pali_factors.length >= 1
        pali_factors.each_with_index do |factor, index|
          if (factor.to_s.size == 3) && (pali_factors[index+1].to_s.size == 3) && (factor * pali_factors[index+1] == pali)
            return  p pali
          end
        end
    end
  end
end

find_largest_pali_with_factors
# => 906609
