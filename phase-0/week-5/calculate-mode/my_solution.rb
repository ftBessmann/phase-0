# Calculate the mode Pairing Challenge

# I worked on this challenge with Victoria Solorzano.

# I spent [1.5] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input?
# An array of random elements
# What is the output? (i.e. What should the code return?)
# An array of most frequent elements
# What are the steps needed to solve the problem?
# Define a method called mode
# Create an empty hash
# Iterate over the input array
# IF the element is not in the hash, the element is added as a key and pair with one
# ELSE add one to the value associated with the key in the hash
# END iteration over the array
# Assign a new variable max_value to the maximum value in the hash
# Iterate through the hash to find the items that match max_value and add them to the array
# Return the new array 


# 1. Initial Solution

def mode(array)
  hash = {}
    array.each do |x| 
      if !hash.has_key?(x)
      	hash[x] = 1
      else
        hash[x] += 1
      end 
    end
  array_new = []
  max_value = hash.values.max
    hash.each do |key, value|
      if value == max_value
        array_new.push(key)
      end 
  end
  return array_new
end

# 3. Refactored Solution

def mode(array)
  hash = {}
    array.each do |x| 
      if !hash.has_key?(x)
      	hash[x] = 1
      else
        hash[x] += 1
      end 
    end
  array_new = []
  max_value = hash.values.max
    hash.select! { |key, value| value == max_value } 
  return hash.keys
end


# 4. Reflection
=begin	
1. Which data structure did you and your pair decide to implement and why?
We decided to implememnt a hash data structure.
The keys of the hash refer to the numbers in the array and relate to the values which represent the frequency of the numbers appearance.

2. Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?
Yes, I was most successful breaking this problem down into implementable pseudocode than the last one.

3. What issues/successes did you run into when translating your pseudocode to code?
We used hash.values.max to access the maximum value in the hash. We also used has_key method to check if the key exists in the hash and
then passed it a value iterating over the hash.

4. What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?
	We used each and select methods to iterate over the content. Yes, we used select while refactoring.
=end