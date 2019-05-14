require 'game'

describe Dice do
  before(:each) do
    @dice = Dice.new
  end

  it '.roll the die' do
    expect(@dice).to respond_to(:roll)
  end

  it '.roll returns a number between 1 and 6' do
    expect(@dice.roll).to be_between(1, 6).inclusive
  end

# Not sure with this one
  # it '.roll returns a random number between 1 and 6' do
  # end

  it '.roll multiple dice' do
    expect(@dice.roll).to be_instance_of(Array)
  end
end
