// // 1. As a user, I want to add up a large collection of numbers. 
// It should be able to give the sum of collections that contain both
// odd amounts of numbers and even amounts of numbers (say, collections of 7 numbers or of 8 numbers).$
// // 2. As a user, I want to find the average of a large collection of numbers. 
// I'm looking for the mean. Like before, it should be able to work with both 
// collections of odd amounts of numbers and even amounts of numbers.$
// // 3. As a user, I want to find the median number within a large collection of numbers. 
// It is the middle value between the smallest and largest values in the collection.
// Again, this must be done in both odd and even numbered collections.As

// RELEASE 5

// USER 1
// var 1
var array = [1,2,3,4,5,6,7];
var reducer = array.reduce(function(a,b) {
	return a + b;
});
console.log(reducer);

// var 2
var reducer = function(array){
    for(var sum = 0, i = array.length; i; sum += array[--i]);
    return sum;
};
console.log(reducer([1,2,3,4,5,6,7]));

// USER 2
// var 1
var array = [1,2,3,4,5,6,7];
var divider = array.reduce(function(a,b) { return a + b; });
var avg = divider / array.length;
console.log(avg);

// var 2
var divider = function(array){
  for(var sum = 0, i = array.length; i; sum += array[--i]);
  return sum/array.length;
};
console.log(divider([1,2,3,4,5,6,7]));

// USER 3
var user3 = function(array) {
	array.sort(function(a,b) {return a - b;});
	var middle = Math.floor(array.length / 2);
	if (array.length % 2 == 0) 
		return array[middle];
	else
		return (array[middle - 1] + array[middle]) / 2;	
};
var my_array = [1,2,3,4,5,6,7];
console.log(user3(my_array));
