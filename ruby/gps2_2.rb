# create an empty hash variable 

# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # take the string and Split it by spaces
  # take each item in the list and turn it into a key in a hash  
  # set default quantity
    # Default should equal 1 
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?]
  # a hash should be returned 

def create_a_list(items_string)
  grocery_list = {}
  items_list = items_string.split
  items_list.each do |item|
    grocery_list[item] = 1 
  end
  grocery_list
end


# Method to add an item to a list
# input: list, item name, and optional quantity
# steps:
  # add the item name to our list (the item name should be the Key)
  # set the item name to the optional quantity
# output:
  # the updated list with the new item in it 

def add_item_to_list(grocery_list, item_name, optional_quantity = 1)
  grocery_list[item_name] = optional_quantity
  grocery_list
end

# Method to remove an item from the list
# input: list, item name to be removed
# steps:
  # search list for key matching item name
  # if key matches item name, delete it
# output: return updated list

def remove_item_from_list(grocery_list, item_name)
  grocery_list.delete(item_name)
  grocery_list
end

# Method to update the quantity of an item
# input: list, item name, new quantity
# steps:
  # search list for key matching item name
  # update value of matching key to new quantity
# output: updated list

def update_item_quantity(grocery_list, item_name, new_quantity)
  grocery_list[item_name] = new_quantity
  grocery_list
end

# Method to print a list and make it look pretty
# input: list
# steps:
  # iterate through list using loop
    # print out "Need to purchase {value} of {key}."
# output: a series of strings

def print_list(grocery_list)
  grocery_list.each do |item, quantity|
    puts "Need to purchase #{quantity} of #{item}."
  end
end

# TEST CODE

test_list = create_a_list("carrots apples cereal pizza")
puts add_item_to_list(test_list, "banana")
puts remove_item_from_list(test_list, "cereal")
puts update_item_quantity(test_list, "apples", 53)
print_list(test_list)
