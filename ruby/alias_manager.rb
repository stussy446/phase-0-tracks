# SPY ALGORITHM: Write a method that make's a spy's name fake
# swap the first/last name and then swap letters
# input example: "Steve Rector", "Danielle "Rector"
# output example: Sidvus Tviwi , "Sidvus Fepoimmi"

def fake_name(fullname)
  #swap the first and last name.
  
  reverse_name = fullname.downcase.split(' ').reverse.join(' ')
  
  # Change the vowels to the next vowel and consonants to the next consant

  letters = reverse_name.split('')
  vowels = ["a", "e", "i", "o", "u"]
  consanants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
  letters.map!{|letter|
    if vowels.include?(letter)
      letter = vowels[vowels.index(letter) + 1]
    elsif consanants.include?(letter)
      letter = consanants[consanants.index(letter) + 1]
    else
      letter = " "
    end
  }
  
  letters.join('').capitalize
end 

#puts fake_name("Steve Rector")
#puts fake_name("Danielle Rector")

# USER INTERFACE

puts "Enter a name that would would like an alias for."
puts "If your sneakiness is complete, type \"quit\""
loop do
  puts "Enter name here--"
  old_name = gets.chomp
  if old_name == "quit"
    break
  else
    new_name = fake_name(old_name)
    puts "Your new name is...#{new_name}"
  end
end
puts "Thank you for using the Fake Naminator!"
  







