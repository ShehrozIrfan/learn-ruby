class DiceSet

  def initialize(options={})
    @dice_array = [Dice.new, Dice.new]
  end

  def roll
    @dice_array.each { |dice| dice.roll }
  end

  def display
    @dice_array.map { |dice| "[#{dice.value}]" }.join(" - ")
  end
end
