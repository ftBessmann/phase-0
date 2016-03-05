# Factorial
# I worked on this challenge with Christopher Lamkin.

# Your Solution Below
def factorial(n)
  if n == 0
  	1
  else
    (1..n).inject {|product, n| product * n }
  end
end
 
puts factorial(5)
