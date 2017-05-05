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
  attr_reader :guess_count, :already_guessed, :game_board
  
  def initialize(secret_word)
    @already_guessed = []
    @secret_word = secret_word
    @game_board = ("_" * @secret_word.length).split('')
    @guess_count = 0 
    @is_over = false 
  end 

  def guess(word)
    if @already_guessed.include?(word)
      "Word already guessed, does not count!"
    else 
      @guess_count += 1 
      @already_guessed << word  
      word
    end 
  end

  def compare_words(word)
    secret_word_letters = @secret_word.split('')
    guess_word_letters = word.split('')
    guess_word_letters.each do |letter|
      if secret_word_letters.include?(letter)
        correct_letter = secret_word_letters.index(letter)
        @game_board[correct_letter] = letter 
      end 
    end
    @game_board  
  end 

    


end

