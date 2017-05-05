require_relative "wordguess"

describe WordGuess do
  let (:game) {WordGuess.new("unicorn")}

  it "lets the user read the guess count" do 
    expect(game.guess_count).to eq 0
    expect(game.game_board). to eq ["_", "_", "_", "_", "_", "_", "_"]
  end
  it "takes a guessed word and adds 1 to guess_count" do 
    expect(game.guess("taco")).to eq "taco"
    expect(game.guess("taco")).to eq "Word already guessed, does not count!"
    expect(game.guess_count).to eq 1
    expect(game.already_guessed).to eq ["taco"]
  end

  it "compares a guess word with the secret word and returns the updated game board." do 
    expect(game.compare_words("use")).to eq ["u", "_", "_", "_", "_", "_", "_"]
    expect(game.compare_words("need")).to eq ["u", "n", "_", "_", "_", "_", "_"]

  end 
end