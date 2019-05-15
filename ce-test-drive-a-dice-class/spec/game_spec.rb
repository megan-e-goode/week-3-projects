require 'game'

describe Dice do
  let(:dice) { Dice.new }

  it '.roll returns a number between 1 and 6' do
    total = dice.roll(1)

    total.each do |num|
      expect(num).to be_between(1, 6).inclusive
    end
  end

  it '.roll multiple dice' do
    expect(dice.roll(2).length).to eql(2)
  end

  it 'Dice responds to .score' do
    expect(dice).to respond_to(:score)
  end

  it '.score returns the sum of the .roll' do
    expect(dice.score([1, 2, 3])).to eql(6)
  end

end
