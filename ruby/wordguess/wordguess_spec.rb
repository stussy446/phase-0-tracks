require_relative "wordguess"

describe WordGuess do
  let (:game) {WordGuess.new("unicorn")}

  it "lets the user read the guess count" do 
    expect(game.guess_count).to eq 0
  end
  it "takes a guessed word and adds 1 to guess_count" do 
    expect(game.guess("taco")).to eq "taco"
    expect(game.guess("taco")).to eq "Word already guessed, does not count!"
    expect(game.guess_count).to eq 1
    expect(game.already_guessed).to eq ["taco"]
  end
end