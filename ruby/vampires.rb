                     # Vampire interview 
# ask the interviewee questions 
	# Name?
	# age? Date of birth?
	# garlic bread?
	# insurance?

# if the employee gets their age right and wants garlic bread or insurance, 
  # they are probably not a vampire
# if the employee got age wrong and says no to garlic bread or insurance, 
 	# they probably are a vampire
# if they got age wrong and said no to bread and insurance,
 	# they almost certainly are a vampire 
# If there name is "Drake Cula" or "Tu Fang", they are definitely a vamp.
# otherwise, the results are inconclusive 

# ask how many employees they want to process, and have each take the survey
# add a section that allows employees to list their allergies until they
# are done, or until they say the dreaded sunshine. If they do, the are probably a vampire

# Finish with a plea for friendship 

puts "How many employees will be processed?"
employees = gets.chomp.to_i
# Employee loop 
for i in 1..employees
	vampire_name = false
	vampire_allergy = false
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
	puts "Please let us know any allergies you may have, one at a time."
	# Allergy loop
	loop {
		puts "allergy name --"
		allergy = gets.chomp 
		if allergy == "done"
			break
		elsif allergy == "sunshine"
			puts "oh no..."
			vampire_allergy = true 
			break
		end 
	}
	# Conditional logic
	if vampire_name 
		puts "Definitely a vampire."
	elsif vampire_allergy
		puts "Probably a vampire."
	elsif (Time.now.year - age == year) && (garlic_bread == "y" || insurance == "y") 
		puts "Probably not a vampire."
	elsif (Time.now.year - age != year) && (garlic_bread == "n" || insurance == "n" )
		if (Time.now.year - age != year) && (garlic_bread == "n") && (insurance == "n") 
			puts "Almost certainly a vampire."
		else
			puts "Probably a vampire."
		end 
	else 
		puts "Results inconclusive."	
	end
end 
puts "Actually, never mind! What do these questions have to do with anything? Let's\n all be friends."