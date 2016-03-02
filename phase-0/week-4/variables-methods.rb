puts "Hello, what's your first name?"
name = gets.chomp
puts "And what's your middle name?"
midname = gets.chomp
puts "And what's your surname?"
surname = gets.chomp
puts "Nice to meet you, " + name +" "+ midname + " "+ surname + "."

puts "What's your favorite number?"
favnum = gets.chomp
newnum = favnum.to_i + 1
puts "I think that " + newnum.to_s + " is a bigger and better number."


=begin
1. How do you define a local variable?

It is a variable local to the code construct in which it is declared.
For example, a local variable declared in a method cannot be accessed outside of that method. 
Local variable names must begin with either an underscore or a lower case letter.

2. How do you define a method?
A method is code organized into logical groups that can be called when needed 
and re-used without having to re-write the same code. 
To use a method, one has to declare it and call it.

3. What is the difference between a local variable and a method?

If variables are nouns Ruby, methods are verbs in Ruby.

4. How do you run a ruby program from the command line?

   ruby name.rb

5. How do you run an RSpec file from the command line?
   
   rspec name.rb

6. What was confusing about this material? What made sense?

This material was helpful a to refresh old knowledge.
Though, I hesitate if I had to explicitly assign local variables to the method parameters in the 4.3.1.

4.3.1 https://github.com/ftBessmann/phase-0/blob/master/phase-0/week-4/address/my_solution.rb)
4.3.2 https://github.com/ftBessmann/phase-0/blob/master/phase-0/week-4/math/my_solution.rb)
=end