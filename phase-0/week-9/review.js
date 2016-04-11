// Pseudocode
// Create a new list
// Add an item with a quantity to the list
// Remove an item from the list
// Update quantities for items in your list
// Print the list

// Initial Solution
var groceryList = {};

function add_item(item, qty){
  if (groceryList[item] > 0)
    return groceryList[item] += qty;
  else
    return groceryList[item] = qty;
}

add_item('meat', 1);
add_item('milk', 2);
add_item('apple', 6);
console.log(groceryList);
add_item('meat', 1);
console.log(groceryList);

function remove_item(item, qty){
    if (groceryList[item] > 1)
        groceryList[item] -= qty;
    else if (groceryList[item] === 1)
        delete groceryList[item];
 }

remove_item('apple', 2);
remove_item('meat', 1);
console.log(groceryList);

function show_list(){
  for (var item in groceryList){
    console.log("Item: "+item+", Qty: "+groceryList[item]);
  }
}

show_list()

/* Reflection
1. What concepts did you solidify in working on this challenge? (reviewing the passing of information, objects, constructors, etc.)
Creating objects, checking if a key exists, maniputlating properties of objects, iterating over key-value pairs.
2. What was the most difficult part of this challenge?
I intended to implement soritng in alphabetic order but it appeared to be rather long.
3. Did an array or object make more sense to use and why?
I used an object because the item name is related to and paired with the quantity.
*/