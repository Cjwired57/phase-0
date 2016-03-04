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