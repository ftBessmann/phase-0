// JavaScript Olympics

// I paired with Alec Hendrickson on this challenge for 1 2.5 hours.

// Warm Up
// Bulk Up
var athlete1 = {
  name: "Daria Domracheva",
  event: "skiing",
};
  
var athlete2 = {
  name: "Shawn White",
  event: "snowboarding",
};
var athleteArray = [athlete1, athlete2]
   
athleteArray.forEach(function(athlete) {
  athlete["win"] = athlete.name + " won " + athlete.event + "!";
});
console.log(athleteArray)
// Jumble your words
var string = "!sdrow ruoy elbmuJ";
function ReverseString(string) {
  return string.split("").reverse().join("")
};
console.log(ReverseString(string));
// 2,4,6,8
function EvensArray(value) {
  return value%2 === 0;
}
var filtered = [12, 5, 8, 130, 44].filter(EvensArray);
console.log(filtered)
// "We built this city"
function Athlete(name, age, sport, quote){  
  this.name = name;
  this.age = age;
  this.sport = sport;
  this.quote = quote;
};
var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!");
console.log(michaelPhelps.constructor === Athlete);
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote);
/* Reflection
1. What JavaScript knowledge did you solidify in this challenge?
I solidified knowledge about objects, functions and built-in methods to manipulate data in arrays.
2. What are constructor functions?
Constructor functions are functions used to create many objects of one type.
3. How are constructors different from Ruby classes (in your research)?
Ruby's class is a special kind of object that creates new instances.
JMeanwhile, avaScript instances are created with a constructor.
Nevertheless, there is no special kind of thing that constructs new objects, every function is (potentially) a constructor.
JavaScript doesn’t have a special syntax or special kind of object to define the behaviour of instances, it has “prototypes”.
Prototypes are not a special kind of object, they’re just objects.
Instance behaviour in JavaScript is defined by modifying the prototype directly, e.g. by adding functions to it as properties.
There is no special syntax for defining a class or modifying a class.
*/