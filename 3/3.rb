# The prime factors of 13195 are 5, 7, 13 and 29

# What is the largest prime factor of the number 600851475143 ?

def find_largest_prime(integer)
  factor_array = []
  potential_factor_array = (2..integer).to_a
  potential_factor_array.each do |factor|
    if integer % factor == 0
      factor_array << factor
    end
  end
  largest_factor = factor_array.last
  potential_factor_array = (2..largest_factor).to_a
  potential_factor_array.each do |potential_factor|
    factor_array.each do |factor|
      if factor != potential_factor && factor % potential_factor == 0
        factor_array.delete(factor)
      end
    end
  end
  p factor_array.last
end

find_largest_prime(600851475143)
#=> 6857
