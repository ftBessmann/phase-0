# Die Class 2: Arbitrary Symbols


# I worked on this challenge by myself.
# I spent [1] hours on this challenge.

# Pseudocode

# Input: an array of strings
# Output: a string
# Steps:
# Create an instance variable labels and assign it to the method parameter (input array)
# IF the input array is emptry raise an ArgumentError
# Set an instance variable sides and assign it to number of elements of the input array
# IF the number of elements is 1, output the only string from the input array
# ELSE return a string randomly chosen from the input array

=begin
# Initial Solution
class Die
  def initialize(labels)
    @labels = labels
      if @labels.empty?
       raise ArgumentError.new("Array is empty")
      end
  end

  def sides
    p @sides = @labels.length
  end

  def roll
  	if @sides == 1
  	  p @labels[0]
  	else
      n = @sides - 1
      index = rand(0..n)
      p @labels[index]
    end
  end
end

die = Die.new(['B', 'C', 'D', 'E', 'F', 'B', 'C', 'D', 'E', 'F'])
die.sides
die.roll
=end
# Refactored Solution
class Die
  def initialize(labels)
    @labels = labels
    raise ArgumentError.new("Array is empty") if @labels.empty?
  end

  def sides
    p @sides = @labels.length
  end

  def roll
  	if @sides > 1
  	  p @labels.shuffle.slice(1).to_s
  	else
  	  p @labels[0]
    end
  end
end

die = Die.new(['B'])
die.sides
die.roll

# Reflection
=begin
1. What were the main differences between this die class and the last one you created in terms of implementation?
Did you need to change much logic to get this to work?
This die class should iterate any number of times, not neccessarily the number of times that equals to the number of sides. Yes, I had to change it.

2. What does this exercise teach you about making code that is easily changeable or modifiable?
Instance variables add flexibility to the code.

3. What new methods did you learn when working on this challenge, if any?
None.

4. What concepts about classes were you able to solidify in this challenge?
To the methods defined ih the class, one should create an instance of a class.
Instance variables can be used in all the methods of a class.
Initialize method is used to set parameters valid for all the objects of a class.
=end