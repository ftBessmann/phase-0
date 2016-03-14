# Pseudocode
# Input: an array (list of names)
# Output: n arrays (accountability groups) with 5 strings (names) (min = 3)
# Steps to solve the problem
# Define the number of elements in the list
# Create a new array group
# Mix the elements of the list
# Divide the list into n arrays (slices) each with 5 elements
# Eliminate nil values if left
# Print the the groups

def create_group(list)  
  if list.length > 5 
    group = []
    group = list.shuffle.each_slice(5).to_a
    p group
  else	
    p list
  end
end

fiery = [ "Aarthi Gurusami", "Abid Ramay", "Adam Zmudzinski", "Alec Hendrickson", "Alex Wen", "Alicia Briceland", "Allison paul", "Andrey Slonski", "Anna Lansfjord",	
"Ben Sanecki", "Benjamin R Flores", "Buck Melton", "Caitlin Hoffman", "Carlos Gonzalez", "Chand Nirankari", "Ché Sanders", "Chris Henderson", "Christopher Lamkin",	
"Christyn Budzyna",	"Dan Park", "David Ramirez", "Ruo Yu Tao", "David Walden", "Bill Deng", "Denny Jovic", "Dexter Moran", "Diana Ozemebhoya Eromosele", "Dominick Lombardo",	
"Elan Kvitko", "Elizabeth Alexander", "Elizabeth Brown", "Ena Bekanovic", "Esther Leytush", "Evan Druce", "Frank Lam", "Gabriel Zurita", "Jack Thatcher", "Jason Milfred",	
"John Colella", "Jonathan Kaplan", "Kelson Adams", "Kristal Lam", "Kunal Patel", "Leland Meiners", "Liam Binell", "Lisa Buch", "Lisa Dannewitz", "Lyudmila Arinich",	
"Mohamed Monekata", "Parker Smathers", "Patrick DeWitte", "Renan Martins", "Riley Scheid", "Robin Soubry", "Samantha Holmes", "Scott Southard", "Shaun R Sweet",
"Shin Wang", "Sibel Ergener", "Simon Thomas", "Talal Talhouk", "Ted Bogin", "Traci Fong", "Victoria Solorzano"]

create_group(fiery)

=begin
Reflection
1. What was the most interesting and most difficult part of this challenge?
To find the appropriate methods to mix and slice the original array.

2. Do you feel you are improving in your ability to write pseudocode and break the problem down?
Yes. But I'm still quite vague at combining the methods.

3. Was your approach for automating this task a good solution? What could have made it even better?
At least, I should have included the minimum size of 3 members in a group.

4. What data structure did you decide to store the accountability groups in and why?
In arrays because we don't need to relate the names with other information. A group is just a simple list.

5. What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
I learnt shuffle and each_slice as well as compact.
=end