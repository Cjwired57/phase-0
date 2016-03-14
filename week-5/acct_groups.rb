#pseudocode:
#Input? An array of 64 cohort member names as strings
#Output? A randomized array of arrays of cohort members (groups of 4)
#Steps
#Step 1: Create an array containing all of the names of cohort members as strings
#Step 2: randomize the order of strings in the array
#Step 3: Separate the elements of the array into arrays of 4, so an array of 16 arrays

cohort_array = ["Aarthi Gurusami", "Abid Ramay", "Adam Zmudzinksi", "Alec Hendrickson", "Alex Wen", "Alicia Briceland", "Allison Paul", "Andrey Slonski", "Anna Lansfjord", "Ben Sanecki", "Benjamin R Flores", "Buck Melton", "Caitlin Hoffman", "Carlos Gonzalez", "Chand Nirankari", "Che Sanders", "Chris Henderson", "Christopher Lamkin", "Christyn Budzyna", "David Ramirez", "Ruo Yo Tao", "David Walden", "Bill Deng", "Denny Jovic", "Dexter Moran", "Diana Ozemebhoya Eromosele", "Dominick Lombardo", "Elan Kvitko", "Elizabeth Alexander", "Elizabeth Brown", "Ena Bekanovic", "Esther Leytush", "Evan Druce", "Frank Lam", "Gabriel Zurita", "Jack Thatcher", "Jason Milifred", "John Colella", "Jonathan Kaplan", "Kelson Adams", "Kristal Lam", "Kunal Patel", "Leland Meiners", "Liam Binell", "Lisa Buch", "Lisa Dannewitz", "Lyudmila Arinich", "Mohamed Monekata", "Parker Smathers", "Patrick DeWitte", "Renan Martins", "Riley Scheid", "Robin Soubry", "Samantha Holmes", "Scott Southard", "Shaun R Sweet", "Shin Wang", "Sibel Ergener", "Simon Thomas", "Talal Talhouk", "Ted Bogin", "Traci Fong", "Victoria Solorzano"]
def create_groups(cohort_members)
  cohort_array = ["Aarthi Gurusami", "Abid Ramay", "Adam Zmudzinksi", "Alec Hendrickson", "Alex Wen", "Alicia Briceland", "Allison Paul", "Andrey Slonski", "Anna Lansfjord", "Ben Sanecki", "Benjamin R Flores", "Buck Melton", "Caitlin Hoffman", "Carlos Gonzalez", "Chand Nirankari", "Che Sanders", "Chris Henderson", "Christopher Lamkin", "Christyn Budzyna", "David Ramirez", "Ruo Yo Tao", "David Walden", "Bill Deng", "Denny Jovic", "Dexter Moran", "Diana Ozemebhoya Eromosele", "Dominick Lombardo", "Elan Kvitko", "Elizabeth Alexander", "Elizabeth Brown", "Ena Bekanovic", "Esther Leytush", "Evan Druce", "Frank Lam", "Gabriel Zurita", "Jack Thatcher", "Jason Milifred", "John Colella", "Jonathan Kaplan", "Kelson Adams", "Kristal Lam", "Kunal Patel", "Leland Meiners", "Liam Binell", "Lisa Buch", "Lisa Dannewitz", "Lyudmila Arinich", "Mohamed Monekata", "Parker Smathers", "Patrick DeWitte", "Renan Martins", "Riley Scheid", "Robin Soubry", "Samantha Holmes", "Scott Southard", "Shaun R Sweet", "Shin Wang", "Sibel Ergener", "Simon Thomas", "Talal Talhouk", "Ted Bogin", "Traci Fong", "Victoria Solorzano"]
  randomized_cohort_list = cohort_array.shuffle
  array_of_groups = randomized_cohort_list.each_slice(4).to_a
  p array_of_groups
end
create_groups(cohort_array)

=begin
Reflection

What was the most interesting and most difficult part of this challenge?
Shuffling the elements, so that each time you run the method you get new, randomized accountability groups.

Do you feel you are improving in your ability to write pseudocode and break the problem down?
Yes, my pseudocode is definitely starting to resemble my work process more closely.

Was your approach for automating this task a good solution?  What could have made it even better?
It was good but it was simple.  The output is hard to read, not incredibly easy to decipher the different groups.  I could have created a hash where the keys were different team names and values group members, but there are only so many hours in a week!

What data structure did you decide to store the accountability groups in?
I went with arrays for simplicity sake but using hashes and naming keys for groups could have made them more readable/accessible.

What did you learn in the process of refactoring your initial solution? My initial solution was pretty barebones but I ended up using a few easy, shorthand methods that I was pretty familiar with (.each/.slice/.shuffle) so there was no need to refactor.

Did you learn any new ruby methods?
No I used some useful methods that I learned earlier this week.

=end