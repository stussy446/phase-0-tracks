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
decor = gets.chomp 
puts "Are you a new customer?(y/n)"
first = gets[0] == "y"

# Create a hash and add in the customer's inputs.
# Print the hash (client_info) 

client_info = {
  name: name, 
  age: age, 
  children: children, 
  decor: decor,
  first: first
}

puts client_info

# Give user the option to update a key. Skip if user says "none"
# If the designer enters "decor_theme"(for example), ask for a new value
# and update the :decor_theme

puts "Please select any option that you would like to update at this time \n (if satisfied, enter \"none\")"
choice = gets.chomp.to_sym
if client_info.has_key?(choice)
  puts "Ok, enter the change for #{choice}"
  new_value = gets.chomp 
  client_info[choice] = new_value
elsif choice == :none
  puts "Glad you are feeling good about this."
else 
  puts "" 
end 

# Print the latest version of the hash

puts "Great, Lets finish up..."
puts client_info




