// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure

// Write your own variable and do something to it.
var firstName = "Chris ", lastName = "Lamkin"
console.log(firstName + lastName)

prompt("What is your favorite food?", "");
alert("Hey! That's my favorite too!");
// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board
for (var hash = "#"; hash.length < 8; hash += "#")
console.log(hash);

// Functions

// Complete the `minimum` exercise.

function min(a, b) {
  if (a < b)
    return a;
  else
    return b;
}
console.log(min(3, 4))

// Data Structures: Objects and Arrays

// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

var me = {myName: "Christopher Joseph Lamkin", age: 23, favoriteFoods: ["Tortellini", "Pear", "Turkish Delight"]};

console.log(me.myName)
console.log(me.age)
console.log(me.favoriteFoods)