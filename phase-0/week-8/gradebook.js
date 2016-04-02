/*
Gradebook from Names and Scores
I worked on this challenge with Caitlin Hoffman.
This challenge took me [1] hours.
You will work with the following two variables.  The first, students, holds the names of four students.
The second, scores, holds groups of test scores.  The relative positions of elements within the two
variables match (i.e., 'Joseph' is the first element in students; his scores are the first value in scores.).
Do not alter the students and scores code.
*/

var students = ["Joseph", "Susan", "William", "Elizabeth"]

var scores = [ [80, 70, 70, 100],
               [85, 80, 90, 90],
               [75, 70, 80, 75],
               [100, 90, 95, 85] ]

// __________________________________________
// Write your code below.

var gradebook = new Object();

gradebook["Joseph"] = new Object();
gradebook["Susan"] = new Object();
gradebook["William"] = new Object();
gradebook["Elizabeth"] = new Object();

gradebook["Joseph"] = {testScores: scores[0]};
gradebook["Susan"] = {testScores: scores[1]};
gradebook["William"] = {testScores: scores[2]};
gradebook["Elizabeth"] = {testScores: scores[3]};


gradebook.addScore = function(name, score) {
  gradebook[name]["testScores"].push(score);
};

gradebook.getAverage = function(name) {
  return average(gradebook[name].testScores);
};
  

function average(array){
  var avgScore = 0;
  for (var i = 0; i < array.length; i++)
    avgScore += array[i];
    avgScore = avgScore/array.length;
    return avgScore;
    };
console.log(gradebook)

// __________________________________________
// Refactored Solution

var gradebook = {};

for ( var i = 0; i < students.length; i++ ){
  gradebook[students[i]] = {};
  gradebook[students[i]].testScores = scores[i];
}

gradebook.addScore = function(name, score) {
  gradebook[name]["testScores"].push(score);
};

gradebook.getAverage = function(name) {
  return average(gradebook[name].testScores);
};
  
function average(array){
  var avgScore = 0;
  for (var i = 0; i < array.length; i++)
    avgScore += array[i];
    avgScore = avgScore/array.length;
    return avgScore;
    };

console.log(gradebook)

// __________________________________________
/* Reflect

1. What did you learn about adding functions to objects?
There two main ways to add function to objects.
Using the object constructor will assign a copy of that function to every new instance of your object. 
Using prototyping will result in one function being shared across all instances.
It can be done by means of both dot notation and bracket notation. 

2. How did you iterate over nested arrays in JavaScript?
We iterated over nested arrays using a for-loop and referncing each element of the nested array with an index in a brackets.

3. Were there any new methods you were able to incorporate? If so, what were they and how did they work?
We incorporated bracket notation to access object properties. It can be used with variables or numbers.
JS evaluates the first complete expression with square brackets in a statement, 
runs toString() on it to convert it into a string and then uses that value for the next bracket expression,
on down the line till it runs out of bracket expressions.

*/ __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}



assert(
  (gradebook instanceof Object),
  "The value of gradebook should be an Object.\n",
  "1. "
)

assert(
  (gradebook["Elizabeth"] instanceof Object),
  "gradebook's Elizabeth property should be an object.",
  "2. "
)

assert(
  (gradebook.William.testScores === scores[2]),
  "William's testScores should equal the third element in scores.",
  "3. "
)

assert(
  (gradebook.addScore instanceof Function),
  "The value of gradebook's addScore property should be a Function.",
  "4. "
)

gradebook.addScore("Susan", 80)

assert(
  (gradebook.Susan.testScores.length === 5
   && gradebook.Susan.testScores[4] === 80),
  "Susan's testScores should have a new score of 80 added to the end.",
  "5. "
)

assert(
  (gradebook.getAverage instanceof Function),
  "The value of gradebook's getAverage property should be a Function.",
  "6. "
)

assert(
  (average instanceof Function),
  "The value of average should be a Function.\n",
  "7. "
)
assert(
  average([1, 2, 3]) === 2,
  "average should return the average of the elements in the array argument.\n",
  "8. "
)

assert(
  (gradebook.getAverage("Joseph") === 80),
  "gradebook's getAverage should return 80 if passed 'Joseph'.",
  "9. "
)