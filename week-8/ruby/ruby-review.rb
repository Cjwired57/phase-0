# Reverse Words


# I worked on this challenge [by myself].
# This challenge took me [.5] hours.

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

Reflection

What concepts did you review or learn in this challenge?
I reviewed iterating over an array in Ruby.

What is still confusing to you about Ruby?
I guess nested hashes would probably be the area I'm most uncomfortable with in Ruby.

What are you going to study to get more prepared for Phase 1?
I'm definitely going to study iterating over nested arrays and hashes more this week before phase 1 starts.

=end