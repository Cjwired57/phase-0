 // JavaScript Olympics

// I paired [with Anna Langsfjord] on this challenge.

// This challenge took me [1] hours.


// Bulk Up

 var athlete1 = {
   name: "Carl Lewis",
   event: "Long-jump",
 }
 var athlete2 = {
   name: "Roger Federer",
   event: "Mens Singles Tennis",
 }

 var athleteArray = [athlete1, athlete2];

 function addWin(athleteArray){
   for (var i = 0; i < athleteArray.length; i ++){
     athleteArray[i].win = athleteArray[i].name + " has won " + athleteArray[i].event;
   }
   return athleteArray;
 }

console.log(addWin(athleteArray));
console.log(athlete1)
console.log(athlete2)


// // Jumble your words
function reverseString(string) {
    var array = string.split("");
    return array.reverse().join("");
}

console.log(reverseString("DevBootCamp"))



// 2,4,6,8
function evens (numbers){
 var even_nums = []
 for (var i in numbers) {
   if (numbers[i]%2 == 0)
     even_nums.push(numbers[i]);
 }
 return even_nums;
}

console.log(evens([0,1,2,3,4,5,6,7,8]));

// "We built this city"
function Athlete(name,age,sport,quote)
{this.name = name;
 this.age = age;
 this.sport = sport;
 this.quote = quote;
  }

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)

/*
Reflection

What Javascript knowledge did you solidify in this challenge?
I was able to practice iterating over arrays in JavaScript a bit more, which was very helpful in making a smoother transition from Ruby.

What are constructor functions?
Sometimes defining an object can be very limiting, so there is a need to be able to create an object type that we can use several times without having to alter each individual object to meet each instances needs.  As a result, you use an object constructor, which is similar to building classes in Ruby.

How are constructors different from Ruby classes (in your research?)
From what I can see so far, they are pretty similar, although it doesn't look as though constructor functions need a separate initialize section, as that's taken care of in the function itself.
*/