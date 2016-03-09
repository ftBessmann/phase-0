# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # define method w/ input string
  # create an instance variable called "foods"
  # assign foods to a new hash
  # break string up with space as delimited
  # assign a local variable strings
  # iterate over strings 
  # push each individual string into hash and capitalize it
  # set default quantity with 1
  # print the list to the console [can you use one of your other methods here?]
# output: a hash

def grocery_list(items)  
  @foods = Hash.new(0)
  strings = items.split(' ')
  strings.each do |item|
    @foods[item.capitalize] = 1
  end
  print @foods
  return @foods
end

items_1 = "carrots apples cereal pizza"
grocery_list(items_1)

# Method to add an item to a list
# input: item name and quantity
# steps: 
# create a new method add_grocery with two parameters (item, qty)
# add a new key-value pair to the hash foods
# print and output the hash
# output: a hash

def add_grocery(item, qty)  
  @foods[item] = qty
  print @foods
  return @foods
end
add_grocery("Lemonade", 2)
add_grocery("Tomatoes", 3)
add_grocery("Onions", 1)
add_grocery("Ice Cream", 4)

# Method to remove an item from the list
# input: item name
# steps: 
# define a method remove_grocery with a parameter item
# remove a key-value pair from the hash foods
# print and output the hash
# output: a hash

def remove_grocery(item)  
  @foods.delete(item)
  print @foods
  return @foods
end

remove_grocery("Lemonade") 

# Method to update the quantity of an item
# input: item name and new quantity
# steps:
# create a new method update_grocery with two parameters (item, qty)
# overwrite a value in an existing key-value pair
# print and output the hash
# output: a hash

def update_grocery(item, qty)  
  @foods[item] = qty
  print @foods
  return @foods
end
update_grocery("Ice Cream", 1) 

# Method to print a list and make it look pretty
# input: item name and quantity
# steps: 
# iterate over the hash foods
# print each key-value pair of the hash as a string on a new line 
# output: a string

def list(item=0, qty=0)   
  @foods.each { |item, qty| puts "\n#{item}: #{qty}"}
end
list

=begin
1. What did you learn about pseudocode from working on this challenge?
Pseucode is an outline of the solution written in simple language identifying main steps to be taken.

2. What are the tradeoffs of using Arrays and Hashes for this challenge?
It is preferable to use hashes for this challenge as we have to relate objects (item, qty) in an unordered collection.
If we used arrays, we wouldn't be able to relate them directly, though each item could be accessed using an index.
At the same time, a hash table organizes the key-value pairs in the order of their input and allows us to access each pair using a key instead of an index. 

3. What does a method return?
Every method in Ruby returns a value by default. This returned value will be the value of the last statement.

4. What kind of things can you pass into methods as arguments?
All data types can be passed into methods as arguments. 

5. How can you pass information between methods?
One can use instance or global variables to pass information between methods.

6. What concepts were solidified in this challenge, and what concepts are still confusing?
Using instance variables to pass information between methods, creating hashes and changing their contents.
I'm not sure if I was right to set default parameters in the last method to avoid passing arguments to call the method.
=end
