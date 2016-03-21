# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #fill in the outline here

# Check the called column for the number called.
  #fill in the outline here

# If the number is in the column, replace with an 'x'
  #fill in the outline here

# Display a column to the console
  #fill in the outline here

# Display the board to the console (prettily)
  #fill in the outline here

#Input: The input should be an array of arrays, the "bingo board" provided at the bottom
#Output: when calling the method "call" the output should be a random letter (of letters B, I, N, G, O) followed by a random number between 1 and 100
#Steps
#Step 1: Start by defining the "call" method
#Step 2: Create an array of strings of the letters that spell out B I N G O
#Step 3: Create an instance variable called "letter_generator" that randomly selects one of these letters, use rand and the .length method here
#Step 4: No create an instance variable called "number_generator" and use rand to set it equal to a random number between 1 and 100
#Step 5: Return both of these instance variables, if you want them combined just convert the random number to a string and add it to the randomly generated letter string
#Step 6: Now, using conditional statements, iterate over each array depending on which letter was generated using the "call" method, if the random number that was generated is in that row, use the map! method to turn that number into the string "X"
#Step 7: continue for each letter

#REVISED PSEUDOCODE
#Step 8: So I've never played Bingo before, and after looking at the instructions again I realized that the letters denote COLUMNS and NOT ROWS.  While my initial solution reflects the row method, I fixed this in my refactored solution using the .each_with_index method and iterating within my iterations.

# Initial Solution
=begin
class BingoBoard

  def initialize(board)
    @bingo_board = board
  end

  def call
    letter_array = ["B", "I", "N", "G", "O"]
    @letter_generator = letter_array[rand(letter_array.length)]
    @number_generator = 1 + rand(100)
    return @letter_generator + @number_generator.to_s
  end

  def check
    if @letter_generator == "B"
      @bingo_board.collect! {|row| row.collect!.each_with_index { |number, index|
        if number == @number_generator && index == 0
          number = "X"
        else
          number
        end }}
    end

    if @letter_generator == "I"
      @bingo_board.collect! {|row| row.collect!.each_with_index { |number, index|
        if number == @number_generator && index == 1
          number = "X"
        else
          number
        end }}
    end

    if @letter_generator == "N"
      @bingo_board.collect! {|row| row.collect!.each_with_index { |number, index|
        if number == @number_generator && index == 2
          number = "X"
        else
          number
        end }}
    end

    if @letter_generator == "G"
      @bingo_board.collect! {|row| row.collect!.each_with_index { |number, index|
        if number == @number_generator && index == 3
          number = "X"
        else
          number
        end }}
    end

    if @letter_generator == "O"
      @bingo_board.collect! {|row| row.collect!.each_with_index { |number, index|
        if number == @number_generator && index == 4
          number = "X"
        else
          number
        end }}
    end
    return @bingo_board.map { |block| puts block.inspect }
  end
=end
# Refactored Solution
class BingoBoard

  def initialize(board)
    @bingo_board = board
  end

  def call
    @letter_array = ["B", "I", "N", "G", "O"]
    @rand_index = rand(@letter_array.length)
    @letter_generator = @letter_array[rand(@letter_array.length)]
    @number_generator = 1 + rand(100)
    return @letter_generator + @number_generator.to_s
  end

  def check
    @bingo_board.collect! {|row| row.collect!.each_with_index { |number, index|
      if number == @number_generator && index == @letter_array.index(@letter_generator)
        number = "X"
      else
        number
      end }}
    return @bingo_board.map! { |block| puts block.inspect }
  end
end

#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
p new_game.call
p new_game.check

=begin

Reflection

How difficult was pseudocoding this challenge?  What do you think of your pseudocoding style?
I thought that I did a good job of breaking down the problem into steps...unfortunately I misread the instructions and thought that the letters were assigned to rows instead of columns.  Aside from that mistake though, I'm happy with my pseudocoding style of identifying the input, output, and then sketching a step by step outline of what I need to accomplish.

What are the benefits of using a class for this challenge?
A class is helpful here because we're using more than one method, and calling instance variables from outside a method is incredibly helpful.

How can you access coordinates in a nested array?
I iterated within the iteration by using the .each_with_index method.  By first setting up an if clause for each letter, I targeted elements based on their index within the inner arrays depending on what random letter had been generated.

What methods did you use to access and modify the array?
As I mentioned above I used .each_with_index to access the individual elements of the inner arrays and then used the .collect! method to modify these elements.

Give an example of a new method you learned while reviewing the Ruby docs.  Based on what you see in the docs, what purpose does it serve, and how is it called?
Honestly, I spent so much time fixing my initial solution that when I went to refactor I decided to use the .each_with_index which I had discovered a few days ago...I definitely used the Ruby Docs to figure out it's implementation, but it was not entirely new to me.  It allows you to target elements based on their index which is incredibly helpful when iterating over elements within nested arrays.

How did you determine what should be an instance variable versus a local variable?
Anything that I needed to call that had been assigned value outside of the method I was currently writing needed to be an instance variable.  If I ran the code and received an error regarding an undefined variable, I knew that I had created a local variable instead of an instance variable and was able to find it and attach the @.

What do you feel is most improved in your refactored solution?
My refactoring actually tackled the main problem in my initial solution which was that it iterated over rows and not columns.  Because of this, my initial solution would substitute a number with "X" regardless of the randomly generated letter.  I fixed this problem in my refactored solution.  I know that my current refactored solution is extremely clunky, but after spending so much time on this exercise, I wasn't able to find any methods that could help me shorten it...I'll definitely be bringing this into office hours to see how I can do this more cleanly/less cluttered.

=end