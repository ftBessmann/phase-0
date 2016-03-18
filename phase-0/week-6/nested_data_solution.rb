# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts: 1
# ============================================================
p array[1][1][2][0]

# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts: 2
# ============================================================
# p hash [outer:][inner:]["almost"][3]
p hash [:outer][:inner]["almost"][3]

# ============================================================

# Hole 3
# Target element: "finished"
nested_data = {array: ["array", {hash: "finished"}]}

# attempts:1
# ============================================================
p nested_data[:array][1][:hash]

# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

new_array = number_array.map do |element| 
  if element.kind_of?(Array)
    element.map {|inner| inner + 5}
  else 
  	element + 5
  end
end
p new_array
# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]
new_array = startup_names.map do |first_level| 
  if first_level.kind_of?(Array)
    first_level.map do |second_level|
  	  if second_level.kind_of?(Array) 
        second_level.map {|inner| inner.to_s + "ly"}
      else
        second_level.to_s + "ly"
      end
    end
  else 
  	first_level.to_s + "ly"
  end
end
p new_array

# Refactoring

new_startup_names = startup_names.map do |first_level| 
  if first_level.kind_of?(Array)
    first_level.map do |second_level|
  	  if second_level.kind_of?(Array) 
        second_level.map {|inner| inner.to_s + "ly"}
      else
        second_level.to_s + "ly"
      end
    end
  else 
  	first_level.to_s + "ly"
  end
end
p new_startup_names

=begin
Reflection

1. What are some general rules you can apply to nested arrays?
To access elements in nested arrays one should, at first, access the index of the outer array and, then, 
of the inner array so many times as the number of inner arrays. For example, 
nested_array = [1, ["inner", "array"], 2, 3]
nested_array[1][0] = "inner"

2. What are some ways you can iterate over nested arrays?
To iterate through nested arrays, one can use general methods for arrays. The output of iteration will differ
for p and puts.
p outputs every element, while puts outputs invidual elements and arrays in arrays.

3. Did you find any good new methods to implement or did you re-use one you were already familiar with?
What was it and why did you decide that was a good option?
We re-used already familiar method map because it creates a new array containing the values returned by the block.

=end