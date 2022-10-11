class Animal
  def make_noise
    # one thing to note here is that the class instance variables are always accessible in class methods.
    # like we've created the @noise in set_noise method, but it can be accessible here in the method because it's instance variable.
    @noise

    # local variable won't be accessible here.
    # noise
  end

  def set_noise
    # here we set the instance variable value
    @noise = "Mewoo!"

    # below we created the local variable, which won't be accessible in make_noise method and throw error.
    # noise = "Mewoo!"
  end
end
