class Animal
  # in ruby till now we don't have class reader and writer methods like attr_*
  # but in rails we've these as cattr_*
  # in ruby so far we don't have
  # we can make our own reader and writer methods for class attributes

  @@species = ['Cat', 'Dog', 'Horse', 'Snake']

  # class attribute reader
  def self.species
    @@species
  end

  # class attribute writer
  def self.species=(array)
    return unless array.is_a?(Array)
    @@species = array
  end

end
