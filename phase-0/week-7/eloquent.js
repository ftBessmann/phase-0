// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.

// var Illusion = "Is it a dream?"
// console.log(Illusion)

/* 
Write a short program that asks for a user to input their favorite food. 
After they hit return, have the program respond with "Hey! That's my favorite too!" 
(You will probably need to run this in the Chrome console  rather than node since node does not support prompt or alert).
*/ 

// prompt("What is your favorite food?", "...");
// alert("Hey! That's my favorite too!");

// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board

// for (var brick = "#"; brick.length <= 7; brick += "#")
// console.log(brick);

// Functions

// Complete the `minimum` exercise.
/*
var min = function(num1, num2){
  if (num1 < num2)
  	return num1;
  else
  	return num2
}
console.log(min(0, 3));
*/
// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.
var me = {
	name: "Mila",
	age: 28,
	foods: ["Seafood", "Avocado", "Salad"],
	quirk: "sporty nerd"
};
console.log(me.name);
console.log(me.age);
console.log(me.foods);
console.log(me.quirk);