require_relative 'guess_game'

describe guess_game do 
  let(:new_game) {GuessGame.new}

it "should return every letter in user 1's word (to be guessed) with a _" do 
  new_game.blank_word.should_receive()