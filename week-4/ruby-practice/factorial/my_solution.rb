# Factorial

# I worked on this challenge [by myself, with: ].


# Your Solution Below
def factorial(number)
  if number == 0
    p 1
  else
    p number * factorial(number -1)
  end
end
factorial(5)