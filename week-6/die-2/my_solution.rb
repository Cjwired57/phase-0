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







# Reflection