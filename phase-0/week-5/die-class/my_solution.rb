# Die Class 1: Numeric

# I worked on this challenge by myself.

# I spent [1] hours on this challenge.

# 0. Pseudocode

# Input: number of sides
# Output: number of sides and a random number between 1 and the number of sides
# Steps:
# Initialize the class Die with the parameter sides
# Create an instance variable @sides and assign it to the parameter sides
# Raise an Argument Error if sides is less than 1
# Define a method to return the number of sides
# Define a method to return a random number between 1 and the number of sides


# 1. Initial Solution
class Die
  def initialize(sides)
    @sides = sides
    if sides < 1
     raise ArgumentError.new("Numbers less than 1 are not allowed")
    end
  end

  def sides
    @sides
  end

  def roll
    n = @sides
    rand(1..n)
  end
end

die = Die.new(6) #This creates a new die object with 6 sides
die.sides # returns 6
die.roll # returns a random number between 1 and 6

# 2. Refactored Solution
class Die
  def initialize(sides)
    @sides = sides
    raise ArgumentError.new("Numbers less than 1 are not allowed") if sides < 1
  end

  def sides
    @sides
  end

  def roll
    rand(1..@sides)
  end
end

# 3. Reflection
=begin
1. What is an ArgumentError and why would you use one?
Raised when the arguments are wrong and there isn’t a more specific Exception class.
I would use one to notify users of your class, if you think certain kinds of arguments aren’t acceptable.

2. What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
I successfully implemented initialize and rand methods.

3. What is a Ruby class?
Classes in Ruby are first-class objects. Each class is an instance of class Class. Classes are like blueprints for objects.

4. Why would you use a Ruby class?
Defining a class lets you group behaviors (methods) into convenient bundles, so
that you can quickly create many objects that behave essentially the same way.

5. What is the difference between a local variable and an instance variable?
Things an object knows about itself are called instance variables. They represent an object's state.
Instance variables are only visible to the object to which they belong.
Whereas a local variable is only visible in a method definition.
Local variable names can be reused in different scopes.

6. Where can an instance variable be used?
An instance variable initialized in one method definition, inside a particular
class, is the same as the instance variable of the same name referred to in other
method definitions of the same class.	
=end