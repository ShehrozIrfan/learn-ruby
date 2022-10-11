class Animal
  attr_accessor :noise, :color

  def initialize(options={})
    @noise = options[:noise]
    @color = options[:color]
  end

  # class methods
  def self.types
    ['Cow', 'Goat', 'Camel']
  end

  def self.create_a_cat
    Animal.new({noise: "Meowww!", color: "White"})
  end
end
