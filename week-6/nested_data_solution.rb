# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"
=begin
array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
#["inner", ["eagle", "par", ["FORE", "hook"]]] ============================================================
p array[1][1][2][0]


# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================
p hash[:outer][:inner]["almost"][3]
#p hash[outer:][inner:]["almost"][3]

# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================
p nested_data[:array][1][:hash]


# ============================================================
=end
# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]
number_array.each do |element|
  if element.kind_of?(Array)
    element.each_with_index {|inner, index| element[index] = inner + 5}
  end
  if element.kind_of?(Integer)
    element.collect! {|element| element + 5}
  end
end

number_array = [5, [10, 15], [20,25,30], 35]
number_array.each_with_index do |element, index|
  if element.kind_of?(Array)
    element.each_with_index {|inner, index| element[index] = inner + 5}
  else
    number_array[index] = element + 5
  end
end
p number_array

# Bonus:
#Ran out of time here :(
startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]
easy_startup_names = ["bit", "find", "fast", "optimize", "scope"]


startup_names.each_with_index do |element, index|
  if element.kind_of?(Array)
    element.each_with_index {|inner, index| element[index] = inner + "ly"}
  else
    startup_names[index] = element + "ly"
  end
end
p startup_names

=begin
Reflection

What are some general rules you can apply to nested arrays?
I think that when accessing values within nested arrays/hashes it is always helpful to see how many brackets are included at the end of the array as it gives you a good indication of how many sets of brackets (array[0][1][3] etc.) you will need to include when trying to call a specific element.

What are some wasy you can iterate over nested arrays?
We found that a combination of using the .kind_of? method and .each_with_index were incredibly helpful.  By identifying whether an element of an array was itself an array we could then iterate over the elements within that array pretty easily, but then using .each_with_index was also helpful in iterating over arrays in general.

Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide it was a good option?
Both .kind_of? and .each_with_index were new methods for me, .kind_of? I grabbed from the instructions and .each_with_method I used instead of .each after I was running into problems making my code destructive.
=end