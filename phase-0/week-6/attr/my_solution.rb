#Attr Methods

# I worked on this challenge by myself.

# I spent [2] hours on this challenge.

# Pseudocode

# Input: a string with my name
# Output: a string with a greeting and my name
# Steps: 
# Set a reader for variable name
# Initialize the class NameData with variable name and assign it to my name
# Set a reader for variable student
# Initialize the class Greetings with variable student and assign it to an instance of class NameData
# Define hello method with a salutation that is addressed to my name

class NameData  
  attr_reader :name

  def initialize
  	@name = "Ludmila"
  end

end

class Greetings
  attr_reader :student

  def initialize
	@student = NameData.new
  end

  def hello
	puts "Hello #{@student.name}! How wonderful to see you today."
  end
end

greet = Greetings.new
greet.hello


# Reflection
# Release 1
# 1. What are these methods doing?
# These methods return the value of instance variables.

# 2. How are they modifying or returning the value of instance variables?
# They modify their value using = format instead of the standard argument format.

# Release 2
# 1. What changed between the last release and this release?
# We used attribute reader method to read the age set in the initialize method.

# 2. What was replaced?
# The method what_is_age was replaced.

# 3. Is this code simpler than the last?
# It is simpler.

# Release 3
# 1. What changed between the last release and this release?
# We used attribute writer method to change the age set in the initialize method.

# 2. What was replaced?
# The method change_my_age was replaced.

# 3. Is this code simpler than the last?
# It is simpler.

# Release 6
=begin	
1. What is a reader method?
A method that returns a value or state outside of the class, but does not change it.

2. What is a writer method?
A method that changes the value of the variable outside of the class, but it is not readable.

3. What do the attr methods do for you?
They make the code more compact and easy to follow.

4. Should you always use an accessor to cover your bases? Why or why not?
One shouldn't alsways use accessor to cover the bases. 
An accessor makes instance variables changeable. It can lead to difficult debugging problems and compromise the security of the data. 

5. What is confusing to you about these methods?
Nothing.	
=end

