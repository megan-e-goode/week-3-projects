class Dice
  def roll(num_of_dice)
    total = []
    num_of_dice.times do
      total.push(1 + rand(6))
    end
    total
  end
end
