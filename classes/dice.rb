class Dice
  attr_reader :value

  def initialize
    generate_random_number
  end

  def roll
    @value = generate_random_number
  end

  private

    def generate_random_number
      rand(6) + 1
    end
end
