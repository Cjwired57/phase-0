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
=begin
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
=end
# Bonus:

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
