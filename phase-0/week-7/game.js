// Mission Description:
// Overall mission: The mouse shall brush her teeth and move to the next level
// Goals: Eat cheese, avoid cat, brush teeth with toothpaste
// Characters: Mouse, Cat
// Objects: Mouse (position, toothpaste, teeth color), Cat (position)
// Functions: moveUp, moveDown, moveRight, moveLeft

// Pseudocode
//Declare a 'mouse' object that will have properties as position, toothpaste and teeth color
//Add different methods to 'mouse' to make it move up, down, right and left
//Declare a 'cat' object and give it a random position
//Move the mouse, and also assign another random position to cat
//Check where mouse is with respect to the cat and toothpaste
//If its the same position as toothpaste, teeth color is white! If the mouse position is same as cat,
//game over!

// Solution
var toothpaste = {
posX: Math.floor((Math.random()*100)+1),
posY: Math.floor((Math.random()*100)+1)
};

var cat = {
health: 100,
posX: Math.floor((Math.random()*100)+1),
posY: Math.floor((Math.random()*100)+1)
};

var mouse = {
posX: 0,
posY: 0,
toothpaste: 0,
teethcolor: "brown",

move: function(direction) {
  if(direction === 'right'){ mouse.posX +=10;};
  if(direction === 'left'){ mouse.posX -=10;};
  if(direction === 'up'){ mouse.posY += 10;};
  if(direction === 'down'){ mouse.posY -=10;};

  cat.posX = Math.floor((Math.random()*100)+1);
  cat.posY = Math.floor((Math.random()*100)+1);
  console.log("Cat's position is " + cat.posX + "," + cat.posY);

console.log("Mouse's position is " + mouse.posX + "," + mouse.posY);

if(mouse.posX === cat.posX && mouse.posY === cat.posY){
console.log("Delicious! Game Over!");
};

if (mouse.posX === toothpaste.posX && mouse.posY === toothpaste.posY){
  mouse.teethcolor = "white";
  mouse.toothpaste = 100;
  console.log("Clean teeth!");
};

}

};

mouse.move('up');
mouse.move('right');

/* Reflection
1. What was the most difficult part of this challenge?
The most difficult was to code the movements. So, I made them the same with the example provided in the task.
2. What did you learn about creating objects and functions that interact with one another?
One has to include one objects functions into another objects functions to make them change their state at the same time. 
3. Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
I have revised Math functions in JavaScript interpretation.
4. How can you access and manipulate properties of objects?
There are several ways to access properties of objects:
1) objectName.property;
2) objectName["property"];
3) objectName[expression].
You can add new properties to an existing object by simply giving it a value: person.nationality = "English";
The delete keyword deletes a property from an object: delete person.nationality; 
for...in statement loops through the properties of an object:
for (variable in object) {
    code to be executed
}
*/