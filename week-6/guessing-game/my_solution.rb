# Build a simple guessing game


# I worked on this challenge [by myself].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: The input to initialize should be an integer, but a method guess should be created with another integer as an input
# Output: The output (when using the method guess) should be :high :low or :correct based on where the guess method input stands in relation to the initialize input

# Steps:
#Step 1: Define the initialize method that accepts one argument "answer" i.e. the correct number
#Step 2: Define the guess method with 1 argument "guess", having it return the symbol :high if guess is greater than answer
#Step 3: if guess is lower than answer it should return :low
#Step 4: anything else should return :correct
#Step 5: Define method solved? that returns true when guess = answer and false if not

# Initial Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  def guess(guess)
    @guess = guess
    if guess < @answer
      return :low
    end
    if guess > @answer
      return :high
    end
    if guess = @answer
      return :correct
    end
  end

  def solved?
    if @guess == @answer
      true
    else
      false
    end
  end
end

# Refactored Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  def guess(guess)
    @guess = guess
    if guess < @answer
      return :low
    elsif guess > @answer
      return :high
    else
      return :correct
    end
  end

  def solved?
    if @guess == @answer
      true
    else
      false
    end
  end
end

=begin

Reflection

How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
Instance variables carry the same characteristics across methods...if a basketball is orange it is still orange after you bounce it.

When should you use instance variables?  What do they do?
You should use instance variables anytime you want to save a value and then access that same value outside of the method in which it is defined.  Above we set @guess to equal guess, so that every time a new guess is submitted, @guess is updated.  Then we access the value of @guess in the method solved?, which would return an error if there was no @ before the guess.

Explain how to use flow control.  Did you have any trouble using it in this challenge?  If so, what idd you struggle with?
Flow control is basically using conditional syntax and booleans to create different results for different inputs.  Using flow control was pretty straightforward here as I only had to sort one input into three different outcomes.

Why do you think this code requires you to return symbols?  What are the benefits of using symbols?
Symbols are already stored values...when you call a symbol several times, you are always calling that value, whereas strings are always unique, even if they have the same value...So if you were to use this object to iterate through infinite guesses until you reached the correct number, it saves the computer a lot of work using symbols as opposed to returning new strings for each guess.

=end