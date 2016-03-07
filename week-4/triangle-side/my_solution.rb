# I worked on this challenge [with kunal patel].


# Your Solution Below

def valid_triangle?(a, b, c)
  if a + b > c and a + c > b and b + c > a
    true
  else
    false
  end
end