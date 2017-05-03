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
# input:
# steps:
# output:

# Method to update the quantity of an item
# input:
# steps:
# output:

# Method to print a list and make it look pretty
# input:
# steps:
# output:

# grocery list should be array

# TEST CODE
puts add_item_to_list(create_a_list("carrots apples cereal pizza"), "banana")

