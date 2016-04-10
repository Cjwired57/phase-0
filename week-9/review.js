// Build a simple guessing game in JS

//Pseudocode
//Input: the input should be the answer
//Output: We want the function to return low if the guess is less than the answer, high if the guess is greater than the answer, and correct if the guess is equal to the answer

//Step 1: Create an empty object, add a property "answer" to the object with a numeric value
//Step 2: Create a function inside of the guessingGame object that uses conditional statements to return low, high or correct if the guess is less than, greater than, or equal to the answer, respectively.

//Initial Solution:

var guessingGame = {

guess: function(guess) {
  if(guess === guessingGame.answer){
  console.log("Correct!");
  }
  if(guess < guessingGame.answer){
  console.log("low");
  }
  if(guess > guessingGame.answer){
  console.log("high");
  }
}
}
guessingGame.answer = 4
guessingGame.guess(3)
guessingGame.guess(5)
guessingGame.guess(4)

//Final Solution

var guessingGame = {
answer: Math.floor((Math.random()*10)+1),

  guess: function(guess) {
    if(guess === guessingGame.answer){
    console.log("Correct!");
    }
    if(guess < guessingGame.answer){
    console.log("low");
    }
    if(guess > guessingGame.answer){
    console.log("high");
    }
  }
}
guessingGame.guess(3)
guessingGame.guess(5)
guessingGame.guess(4)

/* Reflection

What concepts did you solidify in working on this challenge?
I solidified using control flow inside of a javascript object.

What was the most difficult part of this challenge?
I wanted to go one step further than the original ruby challenge and have the answer be randomized instead of input by the user.  While I found a way for this to work, I wasn't able to randomize the number and then keep that randomized number every time I wanted to go back and use the guess function that I had created.

Did you solve the problem in a new way this time?
I solved it in a similar way but because in Ruby this was originally a class that was initialized with the answer, here I just had the answer as a property of the object that you could set as a value.

Was your pseudocode different from the Ruby version? What was the same and what was different?
Again, because this challenge was originally for constructing a class in Ruby, the specifics of the pseudocode were very different (creating an initialize method for example).  However the rest was pretty much identical.

*/