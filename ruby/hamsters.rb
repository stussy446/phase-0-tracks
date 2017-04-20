puts "What is the hamster's name?"
name = gets.chomp
puts "What is the volume level from 1 to 10 for #{name}?"
volume = gets.chomp.to_i
puts "What is #{name}s fur color?"
fur = gets.chomp 
puts "Is #{name} a good candidate for adoption?(y/n)"
adoption = gets.chomp
adop = adoption[0] == "y"
puts "What is #{name}s age?"
age = gets.chomp.to_i 
if age == ""
	age = nil
end 

puts "The name of the hamster is #{name}."
puts "The volume is #{volume}."
puts "The fur color is #{fur}."
puts "It is #{adop} that the hamster is good for adoption."
puts "The hamster is #{age} years old."

