puts 'What is your first name?'
first_name = gets.chomp
puts 'What is your middle name?'
middle_name = gets.chomp
puts 'What is your last name?'
last_name = gets.chomp
p 'Hello '+first_name+' '+middle_name+' '+last_name+'!'

p 'What is your favorite number?'
favorite_number = gets.chomp
better_number = favorite_number.to_i + 1
puts 'Wait your favorite number is '+favorite_number.to_s+'? '+better_number.to_s+' is a way better number!'

=begin
Reflection:

How do you define a local variable?
You can define a local variable very easily by picking a variable name,  i.e. "favorite_number" and setting it = to whatever value you want...be it a string, float, integer, or even another variable.

How do you define a method?
You define a method with the def command, followed by the method name and any arguments you want as an input.  Then after entering the necessary code into the body of the method, use "end".

What is the difference between a local variable and a method?
A local variable is a stored piece of information, whereas a method is more like a stored program...variables can be objects whereas methods input and output objects.

How do you run a ruby program from the command line?
Just use "ruby" followed by the name of the ruby file.

How do you run an RSpec file from the command line?
Just use "rspec" followed by the name of the rspec file.

What was confusing about this material?  What made sense?
I ran into some trouble using "puts" instead of "p", which led to errors popping up everytime I ran the rspec file.  After I realized what I had done everything else was relatively straightforward though.
=end