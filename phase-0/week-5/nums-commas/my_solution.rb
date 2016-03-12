# Numbers to Commas Solo Challenge

# I spent [2] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input?
# A positive integer.

# What is the output? (i.e. What should the code return?)
# A comma-separated integer as a string.

# What are the steps needed to solve the problem?
# Translate the integer into a string
# Separate figures from each other 
# Define the number of blocks of 3 figures
# IF the number of figures is less or equal to 3
# return the initial integer
# ELSIF the number of figures is divisible by 3 without a remainder
# add a comma after each fourth element counting from the end
# one time less than the number of blocks of 3 figures
# ELSE the number of figures is divisible by 3 with a remainder
# add a comma after each fourth element counting from the end
# times the number of blocks of 3 figures

# 1. Initial Solution
def separate_comma(integer)
  strinteger = integer.to_s.split('')
  figures = strinteger.size / 3
  if strinteger.size <= 3
  	p integer.to_s
  elsif strinteger.size%3 == 0
  	t = -4
  	(figures.to_i - 1).times do |x|
  	  strinteger.insert(t, ',')
  	  t -= 4
  	end
    p strinteger.join
  else
  	t = -4
  	(figures.to_i).times do |x|
  	  strinteger.insert(t, ',')
  	  t -= 4
  	end
    p strinteger.join
  end
end

# 2. Refactored Solution
def separate_comma(integer)
  strinteger = integer.to_s.split('').reverse
  figures = strinteger.size / 3
  if strinteger.size < 4
  	p integer.to_s
  elsif strinteger.size%3 == 0
  	t = 3
  	(figures.to_i - 1).times do |x|
  	  strinteger.insert(t, ',')
  	  t += 4
  	end
    p strinteger.join.reverse
  else
  	t = 3
  	(figures.to_i).times do |x|
  	  strinteger.insert(t, ',')
  	  t += 4
  	end
    p strinteger.join.reverse
  end
end

separate_comma(111)
separate_comma(1078694876)
separate_comma(1097976564087865447)

# 3. Reflection
=begin	
1. What was your process for breaking the problem down? What different approaches did you consider?
The process is described in the pseudocode. At first, I understood that one has to 
1) count find a way to count the number of figures,
2) identify how many times there will appear a 3-figure block, 
3) define the conditions at which there will be no comma, an even number of commas and an odd number of commas, 
4) find out after which figures to put a comma and by means of which methods to get it there.
At first, I was tried to iterate over the array by means of each method but I couldn't make it work.
I also wanted to modify not the array by the string itself at first.

2. Was your pseudocode effective in helping you build a successful initial solution?
My pseudocode effective in helping you build a successful initial solution.

3. What new Ruby method(s) did you use when refactoring your solution?
Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.).
Did it/they significantly change the way your code works? If so, how?
I used reverse when refactoring my solution. I used ruby-doc.org. There were no difficulties.
It didn't significantly change the way my code works.

4. How did you initially iterate through the data structure?
I used times to iterate throught the data structure.

5. Do you feel your refactored solution is more readable than your initial solution? Why?
Yes, it is easier to comprehend the iteration of every third element from the beginning than every fourth from the end.
=end