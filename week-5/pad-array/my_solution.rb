# Pad an Array

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


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

#pad!(array_destructive, 5,)
#p array_destructive

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



# 4. Reflection