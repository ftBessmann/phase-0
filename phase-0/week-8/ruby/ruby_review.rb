# I worked on this challenge by myself.
# This challenge took me [1] hours.

# Pseudocode
# IF the input number is less than two
# RETURN the input number
# ELSE
# RETURN the sum of the input number less one and input number less two

# Initial Solution

def is_fibonacci?(num)
    if num < 2
       num
    else
       is_fibonacci?(num-1) + is_fibonacci?(num-2)
    end
end

puts is_fibonacci?(6)

# Refactored Solution

fibrec = ->(f){ f < 2 ? f : fibrec[f-1] + fibrec[f-2] }
puts fibrec[6]

=begin 
Reflection

1. What concepts did you review or learn in this challenge?
I reviewed recursive methods.

2. What is still confusing to you about Ruby?
Sometimes, it's hard to figure out the right logic (identify objects and their attributes) in the tasks.

3. What are you going to study to get more prepared for Phase 1?
I'm going to study the built-in methods.
=end