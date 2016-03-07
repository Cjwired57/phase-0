# Factorial

# I worked on this challenge [by myself, with: Mila Arinich ].


# Your Solution Below
def factorial(number)
  if number == 0
    p 1
  else
    p (1..number).inject {|product, number| product * number}
  end
end