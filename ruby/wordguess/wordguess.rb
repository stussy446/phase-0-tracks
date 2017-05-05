 # Word Guessing Game

# WordGuess Class 

  # method that lets the user enter a word which will be the secret     
  # word 

  # the second user should be able to guess words a certain amount of  # times, until the word is guessed or the maximum guesses have       
  # happened
  # if the user has already guessed the word, it won't count as a guess

  #The guessing player should recieve continuous feedback on the state of the word 

  # The user should get a congratulate message if they win and a insulting message if they don't         

class WordGuess
  attr_reader :guess_count
  
  def initialize(secret_word)
    puts "initializing game..."
    @secret_word = secret_word
    @guess_count = 0 
    @is_over = false 
  end 

end

