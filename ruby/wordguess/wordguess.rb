 # Word Guessing Game

# WordGuess Class 

  # inititalize method that lets the user enter a word which will be the secret     
  # word 

  # the second user should be able to guess words a certain amount of  
  # times, until the word is guessed or the maximum guesses have       
  # happened
  # if the user has already guessed the word, it won't count as a guess

  #The guessing player should recieve continuous feedback on the state of the word 

  # The user should get a congratulatulatory message if they win and a insulting message if they don't         

class WordGuess
  attr_reader :guess_count, :game_board, :is_over, :already_guessed 
  
  def initialize(secret_word)
    @already_guessed = []
    @secret_word = secret_word
    @game_board = ("_" * @secret_word.length).split('')
    @guess_count = 1 
    @is_over = false 
  end 

  def guess(word)
    if @already_guessed.include?(word)
      puts "Word already guessed, does not count!"
      word
    else 
      @guess_count += 1 
      @already_guessed << word  
      word
    end 
  end

  def compare_words(word)
    if @secret_word == word
     @game_board = @secret_word
     @is_over = true 
    elsif @guess_count == @secret_word.split('').length + 3 
      puts "No more guesses left!"
      @is_over = true 
    else  
      secret_word_letters = @secret_word.split('')
      guess_word_letters = word.split('')
      guess_word_letters.each do |letter|
        if secret_word_letters.include?(letter)
          correct_letter = secret_word_letters.index(letter)
          @game_board[correct_letter] = letter 
        end 
      end 
    end
    @game_board  
  end 
end

# DRIVER CODE 

puts "Welcome to Word Guess!"
puts "Player 1...please input your secret word now (do it secretly...)"
word = gets.chomp 
game = WordGuess.new(word)
puts "Awesome, ok player 2, you have #{word.split('').length + 3} tries!"
loop do 
  puts "What is your guess?"
  guess = gets.chomp 
  puts "that is your \##{game.guess_count} guess!"
  game.compare_words(game.guess(guess))
  puts game.game_board
  break if game.is_over
end 

if game.game_board == word
  puts "Congratulations! You won!"
else 
  puts "Better luck next time chump"
end 



