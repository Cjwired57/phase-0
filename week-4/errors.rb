# Analyze the Errors

# I worked on this challenge [by myself].
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

#"Screw you guys " + "I'm going home." = cartmans_phrase
#cartmans_phrase = "Screw you guys " + "I'm going home."
# This error was analyzed in the README file.

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# errors.rb
# 2. What is the line number where the error occurs?
# 8
# 3. What is the type of error message?
# syntax error
# 4. What additional information does the interpreter provide about this type of error?
# unexpected '=', expecting end-of-input
# 5. Where is the error in the code?
# It is directly following the = sign.
# 6. Why did the interpreter give you this error?
# Ruby does not read variables this way, the variable needs to be the #first thing ruby reads followed by the equals sign and operations

# --- error -------------------------------------------------------

def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
  end
end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# errors.rb
# 2. What is the line number where the error occurs?
# 170
# 3. What is the type of error message?
# syntax error
# 4. What additional information does the interpreter provide about this type of error?
# unexpected end-of-input, expecting keyword_end
# 5. Where is the error in the code?
# The error is actually on line 32, where an additional "end" should be.
# 6. Why did the interpreter give you this error?
# The interpreter expects an "end" after the while statement.

# --- error -------------------------------------------------------

#south_park

# 1. What is the line number where the error occurs?
# 52
# 2. What is the type of error message?
# in '<main>' NameError
# 3. What additional information does the interpreter provide about this type of error?
# undefined local variable or method 'south_park' for main:Object
# 4. Where is the error in the code?
# It does not give a location.
# 5. Why did the interpreter give you this error?
# There is no variable named south_park and line 52 makes no attempt to # assign a value to this variable.

# --- error -------------------------------------------------------

#cartman()

# 1. What is the line number where the error occurs?
# 67
# 2. What is the type of error message?
# in '<main>' NoMethodError
# 3. What additional information does the interpreter provide about this type of error?
# undefined method 'cartman' for main:Object
# 4. Where is the error in the code?
# There is no location given.
# 5. Why did the interpreter give you this error?
# There is no method called cartman, so calling this method creates an # error.

# --- error -------------------------------------------------------

#def cartmans_phrase
#  puts "I'm not fat; I'm big-boned!"
#end

#cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
#82
# 2. What is the type of error message?
# ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
# wrong number of arguments (1 for 0)
# 4. Where is the error in the code?
# after the method name.
# 5. Why did the interpreter give you this error?
# When defining the method, the user did not include any arguments as #the expected input.  Therefore, calling the method with argument ('I #hate Kyle') gives the method one more argument than it was expecting.

# --- error -------------------------------------------------------

#def cartman_says(offensive_message)
#  puts offensive_message
#end

#cartman_says

# 1. What is the line number where the error occurs?
# 105
# 2. What is the type of error message?
# ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
# wrong number of arguments (0 for 1)
# 4. Where is the error in the code?
# On line 105, no called argument
# 5. Why did the interpreter give you this error?
# The method expects an argument (offensive_message) yet the user #failed to specify an argument while calling the method on line 105.



# --- error -------------------------------------------------------

#def cartmans_lie(lie, name)
#  puts "#{lie}, #{name}!"
#end

#cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

# 1. What is the line number where the error occurs?
# 122
# 2. What is the type of error message?
# ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
# wrong number of arguments (1 for 2)
# 4. Where is the error in the code?
# On line 126, where only 1 string is passed through the method
# 5. Why did the interpreter give you this error?
# The method is defined as requiring two arguments, however only one #argument is written on line 126 when the user calls the method.

# --- error -------------------------------------------------------

#5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
# 141
# 2. What is the type of error message?
# TypeError
# 3. What additional information does the interpreter provide about this type of error?
# String can't be coerced into Fixnum
# 4. Where is the error in the code?
# On the * sign
# 5. Why did the interpreter give you this error?
# You cannot multiply an integer by a string, they are incompatible.

# --- error -------------------------------------------------------

#amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
# 156
# 2. What is the type of error message?
# ZeroDivisionError
# 3. What additional information does the interpreter provide about this type of error?
# divided by 0
# 4. Where is the error in the code?
# on the / sign
# 5. Why did the interpreter give you this error?
# You cannot divide an integer by zero...it's math.

# --- error -------------------------------------------------------

#require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# 172
# 2. What is the type of error message?
# LoadError
# 3. What additional information does the interpreter provide about this type of error?
# Cannot load such file
# 4. Where is the error in the code?
#  If this was supposed to be a variable, there is no = sign.
# 5. Why did the interpreter give you this error?
# There is no essay.md file to load here.


# --- REFLECTION -------------------------------------------------------
=begin

Which error was the most difficult to read?
The second one tricked me as I did not expect it to identify the error on line 172 and breeze past all of the other errors in the code.

How did you figure out what the issue with the error was?
Most were self-explanatory so by looking at the error type and additional information provided it was pretty easy to see what was going wrong.

Were you able to determine why each error message happened based on the code?
Yes.

When you encounter errors in your future code, what process will you follow to help you debug?
I will follow these same steps, looking at the line number, error name and additional information and if I still can't figure it out I will research the error online.
=end