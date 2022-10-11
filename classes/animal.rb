class Animal
  # def make_noise
  #   @noise
  # end

  # def set_noise
  #   @noise = "Mewoo!"
  # end

  # the class instance variables are only be accessible inside the instance of the class
  # the class instance variables are not accessible outside the class

  # One thing to note here below two methods have the same name 'noise', the ruby is smart enough to distinguish this syntactic suger

  # it will work as getter or reader
  def noise
    @noise
  end

  # it will work as setter or writer
  def noise=(value)
    @noise = value
  end
end
