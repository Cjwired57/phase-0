# I worked on this challenge [Elizabeth Brown].
# This challenge took me [1.5] hours.

# Pseudocode
#Input: the input should be any number
#Output: Output should return true if the number is in the fibonacci sequence, and false if it is not
#Step 1: Define method is_fibonacci? that accepts one argument num.
#Step 2: Create variables for the first 2 numbers in the fibonacci sequence: 0, 1.
#Step 3: Create a while loop that operates while the first variable is less than the argument
#Step 4: Inside the while loop, set the first variable to the second variable, and the second variable to the sum of the first variable and the second variable
#Step 5: Next add an if statement that returns true when the argument equals the first variable
#Step 6: Finally, add an else statement that returns false, this way even if the argument never equals first, once first becomes greater than the argument the loop will stop.

# Initial Solution

def is_fibonacci?(num)
  first = 0
  second = 1
  first_two = first
  while first < num
  first, second = second, first + second
  end
    if num == first
    return true
    else
    return false
  end
end

p is_fibonacci?(4)
p is_fibonacci?(5)
p is_fibonacci?(7)
p is_fibonacci?(8)

# Refactored Solution

def is_fibonacci?(num)
  first = 0
  second = 1
  first_two = first
  while first < num
  first, second = second, first + second
  end
    if num == first
      return true
    else
      return false
  end
end

# Pseudocode
# Input: Setence as a string
#Output: String with each word from sentence reverse but in the same place
#Step 1) Split up the sentence into an array where each word makes up an element
#Step 2) Iterate through the array and use the reverse method on each element
#Step 3) join the array and return the final string

# Initial Solution
def reverse_words(sentence)
  words = sentence.split(' ')
  reverse_string = []

  words.length.times do |i|
    reverse_string[i] = words[i].reverse
  end

  return reverse_string.join(" ")
end

# Refactored Solution

def reverse_words(sentence)
  words = sentence.split(' ')
  reverse_string = []

  words.length.times do |i|
    reverse_string[i] = words[i].reverse
  end

  return reverse_string.join(" ")
end

=begin

# Reflection

What concepts did you review in this challenge?
We reviewed looping and iterating over arrays.

What is still confusing to you about Ruby?
I was a little confused by assigning variables for the fibonacci sequence challenge.  I initially thought that it would be fine to assign the first and second variables on separate lines...but as soon as first was set to second, second then was adding second + second instead of first plus second.  My pair suggested we notate it like this:

first, second = second, first + second

And I had never assigned two variables in one line like that before, which was a bit confusing.  I guess I would like to figure out how to do this challenge while reassigning the two variables on multiple lines.

What are you going to study to get more prepared for Phase 1?
I think I'll go over classes a bit more.

=end