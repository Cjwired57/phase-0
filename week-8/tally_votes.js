// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with: Caitlin Hoffman
// This challenge took me [2] hours.

// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}

/* The name of each student receiving a vote for an office should become a property
of the respective office in voteCount.  After Alex's votes have been tallied,
voteCount would be ...
  var voteCount = {
    president: { Bob: 1 },
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }
*/


/* Once the votes have been tallied, assign each officer position the name of the
student who received the most votes. */
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}

// Pseudocode
//Step 1) Use a for...in... loop to iterate through each of the student voters in the vote object
//Step 2) Use a conditional loop and .hasOwnProperty method to check whether the voteCount object has the same property as the student voter property...if it does then have the loop add one to the value of the property.
//Step 3) In the else statement, set the value of the property in voteCount to 1...this way when the first vote for a student is tallied, a property will be created with value 1 inside of the voteCount object... any additional votes will then just add 1 to the property's value
//Step 4) Repeat the previous steps for each position...we can worry about making this more DRY in the refactoring.
//Step 5) To declare a winner, start by setting two variables.  The first should be called tallies and should equal the voteCount["president"] property.  The second should be a record placeholder and can be set to 0.
//Step 6) Now use a for...in... loop to iterate through all of the names in the voteCount["president"] property.
//Step 7) Create an if statement that compares each name to the variable record...if the name has a value greater than the record, then that name's value will become the new record.
//Step 8) Then we need to create a variable "winner" and set it equal to that name.
//Step 9) Finally, we need to change the property inside of the officers object from undefined to whatever name has been assigned to the variable "winner"
//Step 10) Repeat these steps for each position after president, we can refactor afterwards.

// __________________________________________
// Initial Solution

for (var voter in votes) {
  if(voteCount["president"].hasOwnProperty(votes[voter]["president"])) {
    voteCount["president"][votes[voter]["president"]]++;
  }
  else {
    voteCount["president"][votes[voter]["president"]] = 1;
  }
}
for (var voter in votes) {
  if(voteCount["vicePresident"].hasOwnProperty(votes[voter]["vicePresident"])) {
    voteCount["vicePresident"][votes[voter]["vicePresident"]]++;
  }
  else {
    voteCount["vicePresident"][votes[voter]["vicePresident"]] = 1;
  }
}
for (var voter in votes) {
  if(voteCount["secretary"].hasOwnProperty(votes[voter]["secretary"])) {
    voteCount["secretary"][votes[voter]["secretary"]]++;
  }
  else {
    voteCount["secretary"][votes[voter]["secretary"]] = 1;
  }
}
for (var voter in votes) {
  if(voteCount["treasurer"].hasOwnProperty(votes[voter]["treasurer"])) {
    voteCount["treasurer"][votes[voter]["treasurer"]]++;
  }
  else {
    voteCount["treasurer"][votes[voter]["treasurer"]] = 1;
  }
}
console.log(voteCount)

var tallies = voteCount["president"];
var record = 0;

for (var name in tallies){
  if(tallies[name] > record){
    record = tallies[name];
    winner = name;
  }
}
officers["president"] = winner;

var tallies = voteCount["vicePresident"];
var record = 0;

for (var name in tallies){
  if(tallies[name] > record){
    record = tallies[name];
    winner = name;
  }
}
officers["vicePresident"] = winner;

var tallies = voteCount["secretary"];
var record = 0;

for (var name in tallies){
  if(tallies[name] > record){
    record = tallies[name];
    winner = name;
  }
}
officers["secretary"] = winner;

var tallies = voteCount["treasurer"];
var record = 0;

for (var name in tallies){
  if(tallies[name] > record){
    record = tallies[name];
    winner = name;
  }
}
officers["treasurer"] = winner;
// __________________________________________
// Refactored Solution

for (var student in votes) {
  for (var position in votes[student]) {
  var ballotName = votes[student][position];
      if (voteCount[position].hasOwnProperty(ballotName)){
      voteCount[position][ballotName] ++;
      }
      else {
      voteCount[position][ballotName] = 1;
      }
  }
}

for (var position in voteCount){
  var tallies = 0;
  var winner = "";

for (var name in voteCount[position]) {
  if (tallies < voteCount[position][name]){
    tallies = voteCount[position][name];
    winner = name;
  }
}
officers[position] = winner;
}

// __________________________________________
/* Reflection

What did you learn about iterating over nested objects in JavaScript?
I learned how to use the .hasOwnProperty method in a pretty interesting way...I didn't realize how powerful this tool was at first, but it proved to be crucial in iterating over the nested objects since it allows you to use conditional statements to modify an object if the property does not match, and then continue to change the value once the properties do match.

Were you able to find useful methods to help you with this?
The only new method we used was the .hasOwnProperty method that I described above.

What concepts were solidified in the process of working through this challenge?
I hadn't had much practice with for...in... loops and I definitely gained a better understanding of them by the end of this challenge.  It helped to think of them as the Ruby counterpart, using "do" statements with a value in the pipes to iterate over each element.

// __________________________________________
// Test Code:  Do not alter code below this line.
*/


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)