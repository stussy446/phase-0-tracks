# SPY ALGORITHM: Write a method that make's a spy's name fake
# input example: "Steve Rector", "Danielle "Rector"
# output example: Sidvus Tviwi , "Sidvus Fepoimmi"

def fake_name(fullname)
  #swap the first and last name.
  reverse_name = fullname.downcase.split(' ').reverse.join(' ')
  
  # Change the vowels to the next vowel and consonants to the next consant
  # "Steve Rector" should change the "e"s to "i"s and the "o" to u
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

puts fake_name("Steve Rector")
puts fake_name("Danielle Rector")



