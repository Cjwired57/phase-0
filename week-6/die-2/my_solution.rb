# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: an array of strings
# Output: one string from the array selected at random
# Steps:
#Step 1: define the initialize method that accepts one argument (labels). It should raise an argument for an empty array so make sure to include an argument there if the length of labels is less than one
#Step 2: Make an instance variable equal to the input argument...i.e. @labels = labels
#Step 3: The sides method should still return the number of sides, so just use the .length method here and make sure you use the instance variable @labels.
#Step 4: define the roll method...also use the .length method here, but instead plug it into the rand() that we used for the original die challenge.  Then put all of that inside the brackets following the array like you are just calling a random element of the array.


# Initial Solution

class Die
  def initialize(labels)
    @labels = labels
    if labels.length < 1
      raise ArgumentError.new("Cannot pass an empty array")
    end
  end

  def sides
    return @labels.length
  end

  def roll
    return @labels[rand(@labels.length)]
  end
end
die = Die.new(["A", "B", "C", "D", "E", "F"])
die.sides
die.roll

# Refactored Solution

class Die
  def initialize(labels)
    @labels = labels
    if labels.length < 1
      raise ArgumentError.new("Cannot pass an empty array")
    end
  end

  def sides
    return @labels.length
  end

  def roll
    return @labels[rand(@labels.length)]
  end
end

=begin
Reflection

What were the main differences between this die class and the last one you created in terms of implementation?  Did you need to change much logic to get this to work?
The main difference was altering the roll method within the die class.  Last time we simply had to use 1 + rand(6) to simulate a dice roll, but because here the argument is an array of strings, we had to incorporate the rand within the act of calling an element of the array, so slightly different.

What does this exercise teach you about making code that is easily changeable or modifiable?
This code pretty much follows the exact same code as the original die challenge so it was pretty easy to look at both and identify which small parts had to be altered.

What new methods did you learn when working on this challenge?  If any?
The only method I used here was .length which I was already very familiar with.

What concepts about classes were you able to solidify in this challenge?
This definitely reinforced instance variables, as the first time I typed out the code I forgot the @ sign in front of the labels...it's important to realize that while the instance variable will carry over from method to method, the array or input "labels" will not.