class Animal
  attr_accessor :noise, :color

  # class attributes
  @@species = ['Cow', 'Goat', 'Camel', 'horse', 'cat']
  # class attributes start with @@
  # remember the class attributes are shared among the instances of the class
  @@totalAnimalsCount = 0
  @@totalAnimalsList = []

  # initialize is an instance method
  def initialize(options={})
    @noise = options[:noise]
    @color = options[:color]

    # we want the @@totalAnimalCount to be incremented whenever there is an instace of this class. As
    # the class attributes are shared so, the value of @@totalAnimalCount will be incremented every time
    # whenever an instance of this class is created
    @@totalAnimalsCount += 1
    @@totalAnimalsList << self
  end

  # class methods
  def self.types
    @@species
  end

  def self.create_a_cat
    Animal.new({noise: "Meowww!", color: "White"})
  end

  def self.total_animal_count
    @@totalAnimalsCount
  end
end
