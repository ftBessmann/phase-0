# Build a simple guessing game


# I worked on this challenge by myself.
# I spent [2] hours on this challenge.

# Pseudocode

# Input: an integer
# Output: a symbol
# Steps:
# Initialize the class with the answer parameter
# Assign the answer parameter to an instance variable
# Define the method guess with the guess parameter
# IF the guess is larger than the answer, return the symbol :high
# ELSIF the guess is equal to the answer, return :correct
# ELSE return :low
#Define an instance method GuessingGame#solved? 
# IF the most recent guess was not correct, return false 
# ELSE return true


# Initial Solution
=begin
class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  def guess(guess)
  	@guess = guess
  	if @guess > @answer
  	  p :high
  	elsif @guess == @answer
  	  p :correct
  	else 
  	  p :low
    end
  end

  def solved?
  	if @guess != @answer
  		p false 
  	else
  		p true 
  	end
  end

end

game = GuessingGame.new(10)

game.solved?   # => false

game.guess(5)  # => :low
game.guess(20) # => :high
game.solved?   # => false

game.guess(10) # => :correct
game.solved?   # => true

=end
# Refactored Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  def guess(guess)
  	@guess = guess
  	if @guess > @answer
  	  p :high
  	elsif @guess == @answer
  	  p :correct
  	else 
  	  p :low
    end
  end

  def solved?
  	@guess == @answer ? true : false 
  end

end

game = GuessingGame.new(10)

game.solved?   # => false

game.guess(5)  # => :low
game.guess(20) # => :high
game.solved?   # => false

game.guess(10) # => :correct
game.solved?   # => true

# Reflection
=begin
1. How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
  
  Instance variables enable individual objects to remember state. An instance variable initialized in one method definition,
  inside a particular class, is the same as the instance variable of the same name referred to in other method definitions 
  of the same class.
  Instance methods are defined inside a class and intended for use by all instances of the class.
  They don’t belong only to one object. Instead, any instance of the class can call them.

2. When should you use instance variables? What do they do for you?
  Instance variables are used when we need to be able to do the following:
 - set, or reset, the state of an object
 - read back the state
 When we create an instance of a class object, we need to store different information with that new object.
 And we want to be able to do this without having to handcraft a method with the property hard-coded into it.
 

3. Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
 Flow control determines the execution order of the code. The main flow control technique is conditional execution.
 It depends on the truth of an expression.
 I implemented it in the methods of the task. I also used ternary operator in the refactored version of the code that is essentially
 the same as if statement.

4. Why do you think this code requires you to return symbols? What are the benefits of using symbols?
 A variable to which a symbol is bound provides the actual symbol value, not a reference to it.
 In some respects symbols are like strings but at the same time, they have a lot in common with integers.
 Symbols are immutable and unique. Ruby can process symbols faster and they look good especially as hash keys.
=end