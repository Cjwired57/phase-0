 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description: You are medusa, in a labyrinth, and Perseus has come to kill you, progress through the maze and when you encounter him, turn him to stone!
// Goals: Find Perseus by progressing through the maze...turn him to stone.
// Characters: Medusa, Perseus
// Objects: Medusa Perseus
// Functions: One function for moving forward, which will activate a dice roll between the two characters if they happen to encounter each other, and one to check whether Perseus is dead or alive

// Pseudocode
//Step 1: Create an object for the character Medusa with properties alive, moveCounter, power and heroEncounter.  Set alive to true, the moveCounter to zero
//Step 2: Set the alive property to true, the moveCounter to zero, the power to a randomly generated number between 1 and 6, and the heroEncounter to a randomly generated number between 1 and 10.
//Step 3: Create an object for the character Perseus with properties alive, set to true, and power set to a randomly generated number between 1 and 6.
//Step 4: Define a move function that accepts either "left" or "right" as a direction input.  Set up conditional statements so that each time the method is called, the moveCounter property of the Medusa object will increase by 1.
//Step 5: Set up conditional statements for the following situations: If moveCounter does not equal the randomly generated number of heroEncounter, display a message that says "no sign of Perseus", if moveCounter does equal the randomly generated number of heroEncounter, display a message "Perseus appears".
//Step 6: Initiate a dice roll between the two by comparing each object's power property, whoever has a higher number kills the other, give ties to Perseus.

// Initial Code

var medusa = {
  alive: true,
  moveCounter: 0,
  power: Math.floor((Math.random()*6)+1),
  heroEncounter: Math.floor((Math.random()*10)+1),

move: function(direction) {
  if(direction === "left" || direction === "right" || medusa.moveCounter !== medusa.heroEncounter){
    console.log("Still no sight of Perseus...");
  }
  medusa.moveCounter +=1;
    if(medusa.moveCounter === medusa.heroEncounter){
    console.log("An angry Perseus has appeared!")
      if(medusa.power > perseus.power){
      console.log("Perseus is turned to stone!");
      }
      else if(medusa.power <= perseus.power){
    console.log("You see your reflection in Perseus' shield and turn to stone!");
      perseus.alive = false;
      }
    }
}
}
function dead(perseus) {
  if(perseus.alive = true){
    console.log("Perseus is still at large!");
  }
  else if(perseus.alive = false){
    console.log("Perseus has been turned to stone already!");
  }
}

var perseus = {
  alive: true,
  power: Math.floor((Math.random()*6)+1),
}

medusa.move("left")
console.log(dead(perseus))

// Refactored Code

var medusa = {
  moveCounter: 0,
  power: Math.floor((Math.random()*6)+1),
  heroEncounter: Math.floor((Math.random()*10)+1),
}
var perseus = {
  alive: true,
  power: Math.floor((Math.random()*6)+1),
}
move: function(direction) {
  if(direction === "left" || direction === "right" || medusa.moveCounter !== medusa.heroEncounter){
    console.log("Still no sight of Perseus...");
  }
  medusa.moveCounter +=1;
    if(medusa.moveCounter === medusa.heroEncounter){
    console.log("An angry Perseus has appeared!")
      if(medusa.power > perseus.power){
      console.log("Perseus is turned to stone!");
      perseus.alive = false;
      }
      else if(medusa.power <= perseus.power){
    console.log("You see your reflection in Perseus' shield and turn to stone!");
      }
    }
}

function dead(perseus) {
  if(perseus.alive = true){
    console.log("Perseus is still at large!");
  }
  else if(perseus.alive = false){
    console.log("Perseus has been turned to stone already!");
  }
}

var perseus = {
  alive: true,
  power: Math.floor((Math.random()*6)+1),
}

medusa.move("left")
console.log(dead(perseus))

/*

Reflection

What was the most difficult part of this challenge?
I had a lot of difficulty changing Perseus' alive property from true to false...I'm still not sure what I am doing wrong as calling the method dead still prints the wrong statement.

What did you learn about creating objects and functions that interact with eachother?
I solidified my understanding of objects and their properties and grew much more familiar with accessing them.

Did you learn about any new built-in methods you could use in your refactored solution?  If so, what were they and how do they work?
Because my game only needs to manipulate the properties of objects I didn't find any new methods that could have used in my refactored solution.

How can you access and manipulate properties of objects?
I access them by calling with object.propertyName and then setting this equal to a new value...although I ran into trouble changing true to false for Perseus' alive property.
*/