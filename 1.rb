# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

# Find the sum of all the multiples of 3 or 5 below 1000.

array = (0...1000).to_a
threes_array = []
fives_array = []
sum = 0
array.each do |integer|
  if integer % 3 == 0
    threes_array << integer
  elsif integer % 5 == 0
    fives_array << integer
  end
end
sum+=threes_array.reduce(:+)
sum+=fives_array.reduce(:+)
p sum
