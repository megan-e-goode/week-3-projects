class Dice
  def roll
    Array.new(1) { 1 + rand(6) }
  end
end
