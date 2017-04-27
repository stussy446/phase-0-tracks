# SPY ALGORITHM: Write a method that make's a spy's name fake

def fake_name(fullname)
  #swap the first and last name.
  reverse_name = fullname.split(' ').reverse.join(' ')
  # Change the vowels to the next vowel and consonantts to the next consant
  # "Steve Rector" should change the "e"s to "i"s and the "o" to u
  letters = reverse_name.split('')
  vowels = ["a", "e", "i", "o", "u"]
  letters.map!{|letter|
    if vowels.include?(letter)
      letter = vowels[vowels.index(letter) + 1]
    end
  }


end 

print fake_name("Steve Rector")
