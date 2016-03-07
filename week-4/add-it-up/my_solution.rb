# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with: Mila Arinich ].

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: an array
# Output: total sum of the elements

# Steps to solve the problem:
#create a sample array of numbers
#define method total with input array
#use array method i.e. .inject to add the addition function between all
#of the elements within the array
#test it

# 1. total initial solution
array1=[1,2,3,4]
def total(array)
p array.inject{|sum,x| sum + x}
end
p total(array1)

# 3. total refactored solution
def total(array)
p array.inject{|sum,x| sum + x}
end

# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: array of strings
# Output: sentence

# Steps to solve the problem:
# Again, create a sample array with a set of strings as the elements
#Define the method sentence_maker with 1 argument: array
#Use the join method mentioned in Chris Pine's book to join each of the #elements of the array into one string
#Use the capitalize method to capitalize the first letter of the string
#Finally, append the string with a period using the << method
#test

# 5. sentence_maker initial solution
array1=["This","is","a","very","fun","challenge"]
def sentence_maker(array)
  p array.join(' ').capitalize << "."
end
  p sentence_maker(array1)

# 6. sentence_maker refactored solution
def sentence_maker(array)
  p array.join(' ').capitalize << "."
end