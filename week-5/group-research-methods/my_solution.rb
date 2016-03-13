# Research Methods

# I spent [] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution
def my_array_finding_method(source, thing_to_find)
  final_array = []
  source.each do |word|
    if word.class == thing_to_find.class && word.include?(thing_to_find) ==true
      final_array << word
    end
  end
  return final_array
end

def my_hash_finding_method(source, thing_to_find)
  final_hash = []
  source.each do |k,v|
    if v == thing_to_find
      final_hash << k
    end
  end
  return final_hash
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#

# Person 2
def my_array_modification_method!(input_array, add_num)
  input_array.each_with_index do |item, index|
    if item.is_a?(Numeric)
      input_array[index] += add_num
    end
  end
  return input_array
end

def my_hash_modification_method!(input_hash, add_years)
  input_hash.each do |k,v|
    input_hash[k] += add_years
  end
return input_hash
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 3
def my_array_sorting_method(source)
  source.sort_by {|x| x.to_s}
end

def my_hash_sorting_method(source)
   source.sort_by {|name,age| age}
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 4
def my_array_deletion_method!(source, thing_to_delete)
  source.each do |substring|
    if substring.class == thing_to_delete.class && substring.include?(thing_to_delete) == true
      source.delete(substring)
    end
  end
  return source
  end

def my_hash_deletion_method!(source, thing_to_delete)
  updated_hash = source.reject! {|k,v| k == thing_to_delete}
  return updated_hash
end

# Identify and describe the Ruby method(s) you implemented.
#.class determines the object's class
#.include? will return true if the given object is present.
#.delete will delete an element from an array
#.reject! will remove (destructively) a hash pair from a hash



# Person 5
def my_array_splitting_method(source)

  split_array = []
  array_1 = []
  array_2 = []

  source.each do | item |
    if item.is_a?(Integer)
      array_1.push(item)
    else
      array_2.push(item)
    end
  end

  split_array.push(array_1)
  split_array.push(array_2)

  return split_array

end

def my_hash_splitting_method(source, age)

  split_array = []
  array_1 = []
  array_2 = []

  source.keys.each do | the_key |
    new_item = [the_key, source[the_key]]
    if source[the_key] <= 4
      array_1.push(new_item)
    else
      array_2.push(new_item)
     end
  end

  split_array.push(array_1)
  split_array.push(array_2)

  return split_array

end


# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
#
#
#


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
#
#
#
#
