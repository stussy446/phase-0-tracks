# SPY ALGORITHM: Write a method that make's a spy's name fake
# Cwap the first/last name and then swap letters
# Input example: "Steve Rector", "Danielle "Rector"
# Output example: Sidvus Tviwi , "Sidvus Fepoimmi"

def fake_name(fullname)
  
  # Swap the first and last name.
  # Make all letters lowercase
  
  reverse_name = fullname.downcase.split(' ').reverse.join(' ')
  
  # Change the vowels to the next vowel and consonants to the next consanant
  # Create a condition for "z" to turn into "a" and for everything else to be a space

  letters = reverse_name.split('')
  vowels = ["a", "e", "i", "o", "u"]
  consanants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y",]
  letters.map! { |letter|
    if vowels.include?(letter)
      letter = vowels[vowels.index(letter) + 1]
    elsif consanants.include?(letter)
      letter = consanants[consanants.index(letter) + 1]
    elsif letter == "z" 
      letter = "a"
    else
      letter = " "
    end
  }
  
  # Join the letters array to create a string
  # Split that string by the space and capitalize each element in the string
  # then join that string back together for the return.
  
  fake_name = letters.join('')
  fake_name.split(' ').map!{|word| word.capitalize}.join(' ')

end 

# USER INTERFACE

# Create a loop that uses the fake_name method to create aliases
# If the user inputs "quit", end the loop
# Otherwise, create the new name and store it in a hash.

puts "Enter a name that would would like an alias for."
puts "If your sneakiness is complete, type \"quit\""
aliases = {}
loop do
  puts "Enter name here--"
  old_name = gets.chomp
  if old_name == "quit"
    break
  else
    new_name = fake_name(old_name)
    puts "Your new name is...#{new_name}"
    aliases[old_name] = new_name
  end
end

# Iterate through aliases and print a sentence saying who each alias is.
# Example input: Felicia Torres
# Example output: Vussit Gimodoe is actually Felicia Torres!!

aliases.each { |person, fake_name| 
  puts "#{fake_name} is acually #{person}!!"
}







