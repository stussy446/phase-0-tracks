                     # Vampire interview 
# ask the interviewee questions 
# if the employee gets their age right and wants garlic bread or insurance, 
#   they are probably not a vampire
# if the employee got age wrong and says no to garlic bread or insurance, 
# 	they probably are a vampire
# if they got age wrong and said no to bread and insurance,
# 	they almost certainly are a vampire 
# If there name is "Drake Cula" or "Tu Fang", they are definitely a vamp.
# otherwise, the results are inconclusive 
vampire_name = false
puts "What is your name?"
name = gets.chomp 
if name == "Drake Cula" || name == "Tu Fang"
	vampire_name = true 
end 
puts "How old are you?"
age = gets.chomp.to_i 
puts "What year were you born?"
year = gets.chomp.to_i 
puts "Do you want us to order some garlic bread for you?"
garlic_bread = gets.chomp
puts "Would you like to enroll in the company's health insurance policy?"
insurance = gets.chomp

# Conditional logic
if vampire_name 
	puts "Definitely a vampire."
elsif (2017 - age == year) && (garlic_bread == "y" || insurance == "y")
	puts "Probably not a vampire."
elsif (2017 - age != year) && (garlic_bread == "n" || insurance == "n" )
	if (2017 - age != year) && (garlic_bread == "n") && (insurance == "n")
		puts "Almost certainly a vampire."
	else
		puts "Probably a vampire."
	end 	
end