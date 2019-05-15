require 'game'

describe Dice do
  before(:each) do
    @dice = Dice.new
  end

  it '.roll the die' do
    expect(@dice).to respond_to(:roll)
  end

  it '.roll returns a number between 1 and 6' do
    total = @dice.roll(1)

    total.each do |num|
      expect(num).to be_between(1, 6).inclusive
    end
  end

# Not sure with this one
  # it '.roll returns a random number between 1 and 6' do
  # end

  it '.roll multiple dice' do
    expect(@dice.roll(1)).to be_instance_of(Array)
    expect(@dice.roll(2).length).to eql(2)
  end
end
