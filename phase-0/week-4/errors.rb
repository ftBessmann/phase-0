# Analyze the Errors
# I worked on this challenge by myself.
# I spent [2] hours on this challenge.
# --- error -------------------------------------------------------
#cartmans_phrase = "Screw you guys " + "I'm going home."
# This error occured in the file errors.rb on the line 3. This is a syntax error.
# The interpreter says it didn't expect an "=" sign, rather it expected an $end.
# --- error -------------------------------------------------------
def cartman_hates(thing)
 while true
    puts "What's there to hate about #{thing}?"
 end
end
# This is a tricky error. The line number may throw you off.
# 1. What is the name of the file with the error?
# The name of the file with the error is errors.rb
# 2. What is the line number where the error occurs?
# The line number is 12.
# 3. What is the type of error message?
# The type of error message is Syntax Error.
# 4. What additional information does the interpreter provide about this type of error?
# The interpreter didn't expect such end of input, rather in expected a keyword end.
# 5. Where is the error in the code?
# The error occured in the keyword end of the method.
# 6. Why did the interpreter give you this error?
# Both the method and the while loop must end with and "end" keyword.
# --- error -------------------------------------------------------
south_park = "Heaven"
# 1. What is the line number where the error occurs?
# The line number is 28.
# 2. What is the type of error message?
# The type of error message is Name Error.
# 3. What additional information does the interpreter provide about this type of error?
# The interpreter says that the local variable for the main object is not defined.
# 4. Where is the error in the code?
# The error is after the variable "south_park".
# 5. Why did the interpreter give you this error?
# The variable "south_park" should have been assigned a value.
# --- error -------------------------------------------------------
def cartman()
end
# 1. What is the line number where the error occurs?
# The line number is 40.
# 2. What is the type of error message?
# The type of error message is No Method Error.
# 3. What additional information does the interpreter provide about this type of error?
# The interpreter says that the method is not defined for the main object.
# 4. Where is the error in the code?
# The error if before (def) and after (end) the method name.
# 5. Why did the interpreter give you this error?
# The proper definition of the method is using def and end keywords.
# --- error -------------------------------------------------------
def cartmans_phrase(say)
  puts "I'm not fat; I'm big-boned!"
end
cartmans_phrase('I hate Kyle')
# 1. What is the line number where the error occurs?
# The line number is 53.
# 2. What is the type of error message?
# The type of error message is Argument Error.
# 3. What additional information does the interpreter provide about this type of error?
# The interpreter says that the number of arguments is wrong (1 for 0).
# 4. Where is the error in the code?
# The error is in the absence of a parameters after the method definition.
# 5. Why did the interpreter give you this error?
# One should have either given a parameter to the method when it was defined.
# --- error -------------------------------------------------------
def cartman_says(offensive_message)
  puts offensive_message
end
cartman_says("Rude")
# 1. What is the line number where the error occurs?
# The line number is 71.
# 2. What is the type of error message?
# The type of error message is Argument Error.
# 3. What additional information does the interpreter provide about this type of error?
# The interpreter says that the number of arguments is wrong (1 for 0).
# 4. Where is the error in the code?
# The error is in the absence of arguments when the method is called.
# 5. Why did the interpreter give you this error?
# One should have assigned a value to the parameter "offensive_message" when it is called.
# --- error -------------------------------------------------------
def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end
cartmans_lie('A meteor the size of the earth is about to hit Wyoming!', 'dear')
# 1. What is the line number where the error occurs?
# The line number is 86.
# 2. What is the type of error message?
# The type of error message is Argument Error.
# 3. What additional information does the interpreter provide about this type of error?
# The interpreter says that the number of arguments is wrong (1 for 2).
# 4. Where is the error in the code?
# The error is in the value assigned to the parameter when the method is called.
# 5. Why did the interpreter give you this error?
# One should have called the method with two agruments instead of one.
# --- error -------------------------------------------------------
"Respect my authoritay!" * 5
# 1. What is the line number where the error occurs?
# The line number is 98.
# 2. What is the type of error message?
# The type of error message is Type Error.
# 3. What additional information does the interpreter provide about this type of error?
# The interpreter says that a string can't be coerced into a Fixnum.
# 4. Where is the error in the code?
# The error is in the order of the multiplication operation.
# 5. Why did the interpreter give you this error?
# One should have multiplied a string by a number.
# --- error -------------------------------------------------------
amount_of_kfc_left = 20/0
# 1. What is the line number where the error occurs?
# The line number is 110.
# 2. What is the type of error message?
# The type of error message is Zero Division Error.
# 3. What additional information does the interpreter provide about this type of error?
# The interpreter says that a number was divided by 0.
# 4. Where is the error in the code?
# The error is in the value assigned to the variable.
# 5. Why did the interpreter give you this error?
# One should not divide by 0.
# --- error -------------------------------------------------------
# require_relative "cartmans_essay.md"
# 1. What is the line number where the error occurs?
# The line number is 122.
# 2. What is the type of error message?
# The type of error message is Load Error.
# 3. What additional information does the interpreter provide about this type of error?
# The interpreter says that it cannot find such file.
# 4. Where is the error in the code?
# The error is in the file path.
# 5. Why did the interpreter give you this error?
# Because there's no such file on my laptop.
# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.
# 1. Which error was the most difficult to read?
# Argument error in the cartmans_phrase method was the most difficult to read.
# 2. How did you figure out what the issue with the error was?
# I found the line with the error and read the additional information provided by the interpreter.
# 3. Were you able to determine why each error message happened based on the code?
# Yes, except for the last one. I have to check the command on the web.
# 4. When you encounter errors in your future code, what process will you follow to help you debug?
# I will find the file, then the line where the error occurs. 
# Then, read the additional info and determine the error type.
# Finally, find figure out what the error is and debug. Then run the file to check.


