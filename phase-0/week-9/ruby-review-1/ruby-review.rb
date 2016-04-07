# I worked on this challenge by myself.
# This challenge took me [2] hours.

# Pseudocode
# Input: array of integers
# Output: array of integers and/or strings where multiples of 3 are replaced by "Fizz", of 5 are replaced by "Buzz"
# and of 15 are replaced by "FizzBuzz"
# Steps
# Iterate over the input array
# IF 

# Initial Solution

# def super_fizzbuzz(array)
#   new_array = []
#   array.each do |n|
#     if ((n % 3 == 0) && (n % 5 == 0))
#       new_array << "FizzBuzz" 
#     elsif (n % 3 == 0)
#       new_array << "Fizz"
#     elsif (n % 5 == 0)
#       new_array << "Buzz"	
#     else
#       new_array << n
#     end
#   end
#   return new_array
# end

# Refactored Solution
def super_fizzbuzz(array)
	for i in array	
	    x = ''
	    x += "Fizz" if (i % 3 == 0) 
	    x += "Buzz" if (i % 5 == 0)
	    p (x.empty? ? i : x)
	end
end

super_fizzbuzz([1,2,3])  # => [1, 2, "Fizz"]
super_fizzbuzz([1,2,5])  # => [1, 2, "Buzz"]
super_fizzbuzz([1,2,15]) # => [1, 2, "FizzBuzz"]
super_fizzbuzz([30, 9, 20, 1]) # => ["FizzBuzz", "Fizz", "Buzz", 1]

# Reflection
# I reviewed iteration over arrays, comparison operations, distructive and non-distructiove methods, ternary operator.
# I still need to review built-in Ruby methods.