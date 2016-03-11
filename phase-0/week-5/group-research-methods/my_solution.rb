# Research Methods

# I spent [1.5] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# # Person 2
def my_array_modification_method!(source, thing_to_modify)
  array = []
  source.each do |item|
    if item.is_a? Integer 
      array << item + thing_to_modify
    else
      array << item
    end
  end
  p array
  return array
end

my_array_modification_method!(i_want_pets, 1)

def my_hash_modification_method!(source, thing_to_modify)
  source.each {|key, value| source[key] = value + thing_to_modify }
  p source
  return source
end

my_hash_modification_method!(my_family_pets_ages, 2)

# Release 1: Identify and describe the Ruby method(s) you implemented.
# .each Calls the given block once for each element of an object, passing that element as a parameter.
# .is_a? Returns true if class is the class of object.
# << Pushes the given object on to the array.
# + Appends a specified object to the elements.

# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
# To define a destructive method one should push the modifications/amendments
# into a new container-object (array/hash). Otherwise, the method will be non-destructive.