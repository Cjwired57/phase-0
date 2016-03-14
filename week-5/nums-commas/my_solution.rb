# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? The input is a positive integer
# What is the output? (i.e. What should the code return?) The output should be the integer as a string, with commas separating every three digits (starting from behind)
# What are the steps needed to solve the problem?
#Step 1: turn the input integer into a string
#Step 2: Find the length of the string
#Step 3: If the length is less than 4, print the integer as a string
#Step 3: If the length falls in the range of 4 and 6, insert a comma three digits from the end of the string
#Step 4: Repeat this process based on how long the string is


# 1. Initial Solution
def separate_comma(integer)
  string_integer = integer.to_s
  if string_integer.length < 4
    p string_integer
  elsif string_integer.length == 4 || string_integer.length == 5 || string_integer.length == 6
    p string_integer.insert(-4, ",")
  elsif string_integer.length == 7 || string_integer.length == 8 || string_integer.length == 9
    p string_integer.insert(-4, ",").insert(-8, ",")
  end
end


# 2. Refactored Solution
def separate_comma(integer)
  string_integer = integer.to_s
  groups_of_three = string_integer.length/3.0
  if string_integer.length < 4
    p string_integer
  elsif string_integer.length%3 == 0
    n = -4
    (groups_of_three.to_i-1).times do |i|
      string_integer.insert(n, ',')
      n -= 4
    end
    p string_integer
  else
      n = -4
    groups_of_three.to_i.times do |i|
      string_integer.insert(n, ',')
      n -= 4
    end
  p string_integer
  end
end
separate_comma(3453345)
=begin
# 3. Reflection
What was your process for breaking the problem down?  What different approaches did you consider?
As soon as I saw this problem I knew that I would be turning the input integer into a string and then using if and elsif to deal with different string lengths acquired using the .length method.  I also knew that I would be using the .insert method to insert the commas at position n, which allowed me to use negative values to place the comma from the end of the string...For example the method .insert(-4, ",") on 1000 would output 1,000.

Was your pseudocode effective in helping yo ubuild a successful initial solution?
Yes and no, following my pseudocode I created a very basic method that ended up passing the rspec tests fairly easily, but did not iterate...so while my initial solution worked up to a certain point, it would not be able to handle integers requiring three or more commas.  So I decided to address this in my refactored code.

What new Ruby method(s) did you use when refactoring your solution?
The only method that I added to my initial solution was the .times...I found that the .insert method from my initial solution worked very well.I realized that to iterate I would have to set a new variable that took the string length and divided it by 3 to determine how many times I would need to insert a comma...this solved the problem in my initial solution.  So for example if the integer_string had a length of 9, I could divide that by three and know that there were three groups of 3 digits, and by subtracting by 1, knew that three groups of three digits would require 2 commas.

How did you initially iterate through the data structure?
My initial solution actually did not iterate through the data structure, but when I realized that this was a problem I used the .times method to iterate pretty easily.

Do you feel your refactored solution is more readable than your initial solution?
Yes it is...when I was confronted by the error warning of an integer in a conditional range I used a series of ||'s to map out the entire range. But when I added the iteration with .times I no longer needed that and was able to slim down my code.  Afterwards I looked online for different methods to use as shortcuts but could not find much that made sense to me.