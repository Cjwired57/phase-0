// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: .

// Pseudocode

// Pseudocode
// Input: A integer
// Output: A string with commas separating the number every three digits
// Steps:
// 1. // Separate Numbers with Commas in JavaScript **Pairing Challenge**
// 2. Transform number into string
// 3. Reverse the string
// 4. If the length of the string is less than 4, print the string
// 5. Create variable to determine how many groups of three digits there are in the string
// 6. If the length of the string mudulo 3 returns 0,
// iterate by how many groups of three there are minus 1, use slice to insert comma every three digits
// 7.  If the length of the string modulo 3 does not return 0, do the same iteration without subtracting 1 from groups of three

// Initial Solution

// function separateComma(number) {
//   var numberString = number.toString();
//   var numberArray = numberString.split("");
//   // var groups_of_three = numberString.length;
//   var arrayReverse = numberArray.reverse();
//   // return groups_of_three
//   if(numberString.length < 4)
//     return numberString;
//   else if(numberString.length % 3 == 0){
//     for (var i = 3; i < numberString.length; i += 3){
//       arrayReverse.splice(i, 0, ",");

//     }
//     return arrayReverse;
//   }
//   // var counter = 3;
//   // for(var i=0; i < counter; i++)

// }
// console.log(separateComma(212345678))



// Refactored Solution

function commaSeparator(number) {
  var reversedArray = number.toString().split("").reverse();
  var i = 3;
  do {
    reversedArray.splice(i, 0, ",");
    i += 4;
  } while (i < reversedArray.length);
  return reversedArray.reverse().join("");
}


// Your Own Tests (OPTIONAL)
console.log(commaSeparator(1234567890))



// Reflection