# Your Names
# 1)Chris Lamkin
# 2)Alec Hendrickson

=begin
1.) Refactor error counter using has_key?
2.) Suggested baking items
give user a more accurate message
=end

# We spent [#] hours on this challenge.

# Bakery Serving Size portion calculator.

#  Define method, creates hash, sets parameters for input
def serving_size_calc(item_to_make, num_of_ingredients)
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}
# Sets up an error counter at 3
=begin
error_counter = 3

#Iterates over hash keys, if item_to_make does not equal hash key, it adds a negative error counter
  library.each do |food|
    if library[food] != library[item_to_make]
      error_counter += -1
    end
  end

  if error_counter > 0
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end
=end
=begin
  if item_to_make.include?("cookie") || item_to_make.include?("cake") || item_to_make.include?("pie")
  true
  else
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end
=end
  if library.has_key?(item_to_make)
    true
  else
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end

#Raises error when input is not cake, cookie, or pie

#defines serving_size as the value of whatever key of hash 'library' is called
  serving_size = library[item_to_make]
  remaining_ingredients = num_of_ingredients - serving_size
#defines remaining_ingredients as the value of the called key stores in array, and modulus serving_size to get the remainder.
  case remaining_ingredients
  when 0
    return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}"
  when 1..5
    return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. Suggested baking items: cookies."
  when 5..7
    return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. Suggested baking items: cake."
  else
    return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. Suggested baking items: pie."
  end
end
#Takes remaining_ingredients, if they equal zero returns a statement of what item to make and how many to make.  If there are remaining ingredients it has an incomplete suggested baking items feature.

p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("THIS IS AN ERROR", 5)