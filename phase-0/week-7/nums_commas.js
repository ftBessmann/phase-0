
// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with Lisa Dannewitz.

// Pseudocode
// separateComma(1569743) == "1,569,743"
// Define a function
// Convert number to an array of strings
// Count digits
// Count commas = ((digits-1) / 3) 
// frontDigits = digits % 3
// Set up a new array
// WHILE there still are frontDigits
  // push that digit into a new array
// END
// Add a comma
// Repeat for sets of 3 at end


// Initial Solution

// function separateComma(number) {
//   var array = String(number).split("");
//   var digits = array.length;
//   var frontDigits = digits % 3;
//   var result = [];
  
//   var i = 0
//   while(frontDigits > i) {
//     result.push(array[i]);
//     i++;
//   }
//   if(result!==[]){
//     result.push(',');
//   }
//   digits -= frontDigits;
//   i = frontDigits;
//   while(digits > frontDigits) {
//     for(var x=0;x<3;x++){
//       result.push(array[i]);
//       i++;
//     }
//     digits -= 3;
//     if(digits>0){
//       result.push(',');
//     }
//   }
  
//   return result.join('');
// }

// console.log(separateComma(21569743))
// separateComma(1569743) == "21,569,743"


// Refactored Solution

function separateComma(number) { 
  return number.toLocaleString();
}
console.log(separateComma(21569743))

// Reflection
/*
1. What was it like to approach the problem from the perspective of JavaScript?
Did you approach the problem differently?
I was a bit confusing at first. But we figured out a way to cope with the task in a slightly different way.
2. What did you learn about iterating over arrays in JavaScript?
Array iteration methods don’t have a result. They include Array.prototype.forEach(), which is similar to for...in;
Array.prototype.every(); Array.prototype.some().
3. What was different about solving this problem in JavaScript?
It was difficult to understand how to push the sets of 3 digits that stand after the first 1-2 digits 
and how to remove the comma at the very end of the integer.
4. What built-in methods did you find to incorporate in your refactored solution?
We found toLocaleString method which actually replaces all our code.
*/