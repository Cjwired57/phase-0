**What does puts do?**
Puts prints the output of your code and adds a new line afterwards.  For example, if you were to use: puts 2*3, the output would be 8 and there would be a new line.

**What is an integer?  What is a float?**
An integer is a number without a decimal, i.e. 1, 2, 3.  A float is a number with a decimal, i.e. 1.3, 2.5, 3.4.

**What is the difference between float and integer division?  How would you explain the difference to someone who doesn't know anything about programming?**
If you use division on an integer, it will not give you an exact answer and will instead round down, assuming there is a remainder.  For example, if you typed in 9 / 2, you would not get 4.5, instead you would get 4.  However, if you divide a float, i.e. 9.0 / 2, you will get 4.5 because you provided the extra digit after the decimal.



```ruby
puts 24 * 365
puts 10 * 365 * 24 * 60
```


Reflection:
**How does Ruby handle addition, subtraction, multiplication, and division of numbers?**
For addition, subtraction, and multiplication use +, -,  and * respectively.  For division you can either calculate with / or the modulus with %.  The division operator divides the left hand operand by the right hand operand, while the modulus divides the left hand operand by the right hand operand and returns the remainder that would give you.

**What is the difference between integers and floats?**
Integers are numbers without decimals, i.e 9, while floats have decimals, i.e. 9.0.

**What is the difference between integer and float division?**
When you divide an integer, if the answer is not an integer you will be given the number rounded down: 9 / 2 will result in 4, not 4.5.  However, when you divide floats you will get the exact number: 9.0 / 2.0 = 4.5.

**What are strings? Wy and when would you use them?**
A string is an object in ruby that holds a sequence of bytes, typcally characters to spell something out.  You would use them all the time, for example setting a variable to something that isn't a number, or if you want the outcome to be readable as a sentence.

**What are local variables?  Why and when would you use them?**
Local variables are just names that you can assign to objects.  You would use them anytime you want to store a value and be able to refer to it later by the name of the variable.

**How was this challenge?  Did you get a good review of some of the basics?**
This challenge went well, at first I was confused by all of the rSpec but I figured it out pretty quickly, definitely helped get some beginner experience in ruby.

Links:

[Defining-Variables](defining-variables.rb)

[Simple-String](simple-string.rb)

[Basic-Math](basic-math.rb)
