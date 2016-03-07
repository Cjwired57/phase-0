# Leap Years

# I worked on this challenge [with: kunal patel].


# Your Solution Below
def leap_year?(year)
  if year % 4 == 0 && year % 100 != 0
  p true
  elsif year % 4 == 0 && year % 100 == 0 && year % 400 == 0
  p true
  else
  p false
  end
end
leap_year?(100)