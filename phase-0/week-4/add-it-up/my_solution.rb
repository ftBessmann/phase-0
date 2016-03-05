# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge with Christopher Lamkin.

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: array of numbers
# Output: sum of array elements
# Steps to solve the problem.
# 1. Addition shall take place in iterations. Every next iteration shall result in an temporary result:
# e.g. [1,3,5,7,] =>
#       1 + 3
#          4 + 5
#             9 + 7
# 2. Find a method to temporary hold intermediary results of addition operation => .inject
# 3. Determine the result memo section => sum
# 4. Determine the object section => x
# 5. Determine the block section => sum + x

# 1. total initial solution

def total(array)
  array.inject {|sum, x| sum + x}
end

# 3. total refactored solution



# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: array of strings
# Output: sentence made of array elements
# Steps to solve the problem.
# 1. Find a method to unite separate words into a sentence => .join
# 2. Choose an appropriate separator between words => ' '
# 3. Find a method to capitalize the 1st letter of the 1st word 
# in the sentence and downcase other letters => .capitalize
# 4. Find a method to add a dot-string (".") at the end of sentence => << (.push)


# 5. sentence_maker initial solution
def sentence_maker(array)
  array.join(' ').capitalize << "."
end

# 6. sentence_maker refactored solution

