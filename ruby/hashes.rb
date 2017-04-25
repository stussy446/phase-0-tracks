# Ask the user for their name, age, number of children, decor theme,
# and if they are a first time customer 
#Convert responses to integer or boolean if necessessary 

puts "What is your name?"
name = gets.chomp
puts "What is your age?"
age = gets.chomp.to_i
puts "How many children do you have?"
children = gets.chomp.to_i
puts "What is your preferred decor theme?"
decor_theme = gets.chomp 

# Create a hash and add in the customer's inputs 
client_info = {
  name: name, 
  age: age, 
  children: children, 
  decor_theme: decor_theme
}

print client_info

# Give user the option to update a key. Skip if user says "none"
# If the designer enters "decor_theme"(for example), ask for a new value
# and update the :decor_theme

puts "Would you like to update one of the options?"
choice = gets.chomp.to_sym
if choice == "none"
  puts "Ok, moving on."
elsif choice == :name 
  puts "Ok please give me a new value for #{choice}"
  new_value = gets.chomp
  client_info[choice] = new_value
end
print client_info


# Print the latest version of the hash