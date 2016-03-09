# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: separate into sub strings
 # take the substrings and assign them to keys in the hash

 # [fill in any steps here]
  # set default quanity

 # print the list to the console [can you use one of your other methods here?]
# output: print the list of groceries with their quantities in a hash

def create_list(string_of_items)
  array_of_items = string_of_items.split
  hash_items = {}
  array_of_items.each do |grocery_item|
    hash_items[grocery_item] = 1
  end
return hash_items
end
$groceries_list = create_list("apple milk egg")


# Method to add an item to a list
# input: item name and optional quantity
# steps: define a method that takes key/pair values that adds to the existing list of items.
# output: print the new list of items
def add_item(new_item)
  $groceries_list
  $groceries_list[new_item] = 1
  p $groceries_list
end
  $groceries_list
# Method to remove an item from the list
# input: take items names and removes from the listd
# steps: define a method that will remove the item in the list
# output: and then we get the updated list.
def remove_item(item)
  $groceries_list.delete(item)
end
  p remove_item("milk")
# Method to update the quantity of an item
# input: use a key to update a value.
# steps: taking the existingh hash pair
# and update his value
# output: print the new list with the new value.

# Method to print a list and make it look pretty
# input: the hash with items
# steps: print every method on a different line
# output: the final list looking pretty.