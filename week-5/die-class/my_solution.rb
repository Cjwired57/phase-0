# Die Class 1: Numeric

# I worked on this challenge [by myself, with: ]

# I spent [4] hours on this challenge.

# 0. Pseudocode

# Input: # of sides
# Output: should be a randomized number less than or equal to the number of sides
# Steps:
#Step 1: make sure to raise an argument if sides is less than one
#Step 2: Set the class variable to the argument input
#Step 3: For the roll method, use 1 + rand with sides as the input.

# 1. Initial Solution

class Die
  def initialize(sides)
    if sides < 1
      raise ArgumentError.new("Only positive integers allowed")
    end
    @sides = sides
  end
  def inspect
    "This die has {@sides} sides."
  end
  def sides
    sides = @sides
    p sides
  end

  def roll
    1 + rand(sides)
  end

end


# 3. Refactored Solution
class Die
  def initialize(sides)
    if sides < 1
      raise ArgumentError.new("Only positive integers allowed")
    end
    @sides = sides
  end

  def sides
    sides = @sides
  end

  def roll
    1 + rand(sides)
  end

end






=begin
Reflection
What is an Argument Error and why would you use one?
An argument error is a class that addresses any inconsistencies with your code...for example when we are rolling a dice, we know that the dice cannot have 0 sides so we can raise an Argument error that tells the user to input a different argument, with a message specifying how they can change this.

What new Ruby methods did you implement?  What challenges and successes did you have in implementing them?
I used the rand method for the first time, other than that it was just the creation of the die class that was new.

What is a Ruby class?
A class is simply a blueprint that you write once and then can create objects from said blueprint, as many as you want.

Why would you use a Ruby class?
You would use a ruby class if you wanted to create an object that had certain parameters tailored to what you need out of it.

What is the difference between a local variable and an instance variable?
Instance variables have the prefix of @.  Local variables are only really used in the method that they are defined and then disappear once the method has returned...whereas an instance variable can be used anywhere else when the class in which it is defined has been called upon.

Where can an instance variable be used?
Again, they can be used in the instance of the class where it was defined.
=end