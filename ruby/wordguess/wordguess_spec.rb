require_relative "wordguess"

describe WordGuess do
  let (:game) {WordGuess.new("unicorn")}

  it "lets the user read the guess count" do 
    expect(game.guess_count).to eq 0
  end
end