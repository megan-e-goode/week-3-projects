class Dice
  def roll(num_of_dice)
    points = []
    num_of_dice.times do
      points.push(1 + rand(6))
    end
    points
  end

  def score(points)
    points.sum
  end
end
