# Pad an Array

# I worked on this challenge with Dan Park.

# I spent [2] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode
​
# What is the input?
​
	#An array, minimum size as an integer, optional argument of any data type. 
​
# What is the output? (i.e. What should the code return?)
​
	#An array with updated information.
​
# What are the steps needed to solve the problem?
	
	#For Destructive Method
	#Determine the number of elements in the initial array method count.
	#Assign a variable array_size to the number of elements in the array.
	#compare the variable array_size with the min_size.
	#if variable array_size is less than minimum size add optional argument(s) into array, return new array.
	#else variable array_size is equal to minimum size or the minimum size equals 0, return the initial array.
	#return new array.
	#
​
​
	#For Non-Destructive Method
	#Determine the number of elements in the initial array method count.
	#Assign a variable array_size to the number of elements in the array.
	#compare the variable array_size with the min_size.
	#if variable array_size is less than minimum size add optional argument(s) into array, return new array.
	#else variable array_size is equal to minimum size or the minimum size equals 0, return the initial array.
	#return new array.
	
​
# 1. Initial Solution
# def pad!(array, min_size, value = nil) #destructive
#	  if array.length < min_size && value == nil
#     until array.length == min_size 
#	      array.push(nil)
#     end
#   end
#   if array.length < min_size && value
#      until array.length == min_size 
#        array.push(value)
#      end
#    end
#    if array.length >= min_size || min_size == 0
#	     return array 
#	   end
#  return array
# end
​

# def pad(array, min_size, value = nil) #non-destructive
#   my_array = []
#   array.each { |x| my_array.push(x) }
#	    if my_array.length < min_size && value == nil
#       until my_array.length == min_size
#		      my_array.push(nil)
#       end
#     end
#     if my_array.length < min_size && value
#        until my_array.length == min_size 
#          my_array.push(value)
#        end
#      end
#	     if my_array.length >= min_size or min_size == 0
#	        return my_array 
#	     end
#   return my_array
# end

# 3. Refactored Solution
def pad(array, min_size, value = nil) #non-destructive
  min_size >= 0
  my_array = []
  array.each { |x| my_array << x }
  if array.size >= min_size
    my_array 
  else
    (min_size - array.size).times { |y| my_array << value }
    my_array
  end
end
​
pad([1,2,3], 5)

def pad!(array, min_size, value = nil) #destructive
  min_size >= 0
  if array.size >= min_size
    array
  else
    (min_size - array.size).times { |y| array << value }
    array 
  end
end
​
pad!([1,2,3], 5, "apple")
​
# 4. Reflection
=begin
1. Were you successful in breaking the problem down into small steps?
Yes, we were successful in writin gthe pseudocode.

2. Was your initial solution successul at passing the tests? If so, why do you think this is?
If not, what were the errors you encountered and what did you do to resolve them?
No, the initial solution was not successul at passing the tests.
The error was undefined local variable or method `​' for main:Object (NameError)

3. When you refactored, did you find any existing methods in Ruby to clean up your code?
Yes, I replaced until conditional with times loop.

4. How readable is your solution? Did you and your pair choose descriptive variable names?
Our variable names are simple and descriptive.
 
5. What is the difference between destructive and non-destructive methods in your own words?
Destructive methods change the object by creating a completely new object, 
whereas non-destructive methods make temporary changes.
=end