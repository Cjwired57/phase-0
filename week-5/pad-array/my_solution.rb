# Pad an Array

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input? The input are three arguments, an array, a non-#negative integer, and an optional value to be inserted as the "pad"
# What is the output? (i.e. What should the code return?) The output #should be the modified array to include padding when necessary, if the #second argument (minimum array length integer) is less than or equal to #the length of the array, the output will be the array unchanged.

# What are the steps needed to solve the problem?
#Step one: Create a sample array
#step two: Measure the distance between array length and minimum size of #array arguments
#iterate so that "value" is added to the end of the array for as many #times as the difference between array length and minimum size arguments

# 1. Initial Solution
#array_destructive = [4, 2, 7]
array_destructive = [4, 2, 7]
def pad!(array, min_size, value = nil) #destructive

 while min_size != array.length
   if min_size <= array.length
     puts array
     break
   else
     array.push(value)
   end
 end
 p array
end

pad!(array_destructive, 5,)
p array_destructive

def pad(array, min_size, value = nil) #non-destructive
new_array = array.dup
 while min_size != new_array.length
   if min_size <= new_array.length
     puts new_array
     break
   else
     new_array.push(value)
   end
 end
 p new_array.dup
end
pad(array_destructive, 5, "apple")
p array_destructive



# 3. Refactored Solution
def pad!(array, min_size, value = nil) #destructive
  array.fill(value, array.length...min_size)
end

def pad(array, min_size, value = nil) #non-destructive
  array.dup.fill(value, array.length...min_size)
end

# 4. Reflection
=begin
Were you successful in breaking the problem down into small steps?
Yes, we created three pretty simple steps that accurately covered the work we needed to do in creating the initial solution.

Once you had written your pseudocode, were you able to easily translate it into code?  What difficulties and successes did you have?
Yes we were able to translate fairly easily, I think we were immediately successful in identifying the need to directly compare the array length and minimum array size arguments, but we ran into some trouble figuring out which was the best way to iterate over the array...when we finally switched over to using "while" we found a lot of success.

Was your initial solution successful at passing the tests?  If so, why do you think that is?  If not, what were the errors you encountered and what did you do to resolve them?
Not at first, we had a lot of errors creating the non-destructive method, as for some reason our array value was carrying over from the destructive method.  However, when we added the .dup method to not only the final return command, but to the original variable assignment itself, we found success.

When you refactored, did you find any existing methods in Ruby to clean up your code?
Yes, we found the .fill method which very simply filled in the value for the range between array.length and min_size...really helped to clean up the code.

How readable is your solution?  Did you and your pair choose descriptive variable names?
I would say our solution is readable, we used array_destructive/new_array to differentiate between different assigned variables.

What is the difference between destructive and non-destructive methods in your own words?
Destructive methods make permanent changes to whatever is passed through as an argument, in this case the original array is changed.  Non-destructive methods change the array within the method itself, but as you can see above, with the .dup method these are shallow changes that do not affect the argument permanently.
=end