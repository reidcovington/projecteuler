# Each new term in the Fibonacci sequence is generated by adding the previous two terms. By starting with 1 and 2, the first 10 terms will be:

# 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...

# By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.

def fib_even_sum(a, b, sum)
  if b % 2 == 0
    sum += b
  end
  return sum if b >= 4000000
  fib_even_sum(b, a+b, sum)
end

p fib_even_sum(1, 2, 0)
#=> 4613732
