require 'spec_helper'
require 'guessing_game'

describe GuessingGame do
  it "#makes_random_number" do
    game = GuessingGame.new

    number_one = game.makes_random_number
    number_two = game.makes_random_number
    number_three = game.makes_random_number

    unlikely = number_two || number_three

    expect(number_one).to_not eq(unlikely)
  end
end
