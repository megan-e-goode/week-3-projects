require 'game'

describe Dice do
  it '.roll the dice' do
    dice = Dice.new
    expect(dice).to respond_to(:roll)
  end
end
