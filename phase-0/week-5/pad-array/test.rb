def pad(array, min_size, value = nil) #non-destructive
  min_size >= 0
  my_array = []
  array.each { |x| my_array.push(x) }
  if array.size >= min_size
    my_array 
  else
    (min_size - array.size).times { |y| my_array.push(value) }
    my_array
  end
  return my_array
end
​
pad([1,2,3], 5, "apple")