require 'game'

describe Dice do
  it '.roll the dice' do
    dice = Dice.new
    expect(dice).to respond_to(:roll)
  end

  it '.roll returns random number between 1 and 6' do
    dice = Dice.new
    expect(dice.roll).to be_between(1, 6).inclusive
  end
end
