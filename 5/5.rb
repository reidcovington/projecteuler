# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

def find_factors(integer)
  factor_array = []
  potential_factor_array = (2..(integer-1)).to_a
  potential_factor_array.each do |factor|
    if integer % factor == 0
      factor_array << factor
    end
  end
  factor_array
end

def find_smallest_multiple(integer)
  factor_array = (2..integer).to_a
  factors = []
  potential_multiples = []
  large_multiple = 116396280
  factors = find_factors(large_multiple)
  factors.each do |potential_multiple|
    true_count = 0
    factor_array.each do |factor|
      if potential_multiple % factor == 0
        true_count += 1
      end
      return potential_multiple if true_count == 18
    end
  end
  #    factor_array.each  do |element|
  #     potential_multiples << (factor * element)
  #    end
  # end
  # potential_multiples.each do |multiple|
  #   factors = find_factors(multiple)
  #   p "multiple #{multiple}, with factors #{factors}"
  #   if factors[0..18] == factor_array
  #     p multiple
  #   end
  # end
end

p find_smallest_multiple(20)

# p find_factors(116396280)
