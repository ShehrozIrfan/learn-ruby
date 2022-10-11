class Animal

  # attr_reader :noise
  # attr_writer :noise
  # if we've both attr_reader and attr_writer, we can use attr_accessor
  attr_accessor :noise

  # same as attr_reader
  # def noise
  #   @noise
  # end

  # same as attr_writer
  # def noise=(value)
  #   @noise = value
  # end

  # instances calling their own methods
  # - use self to reference the current instance from code inside the instance
  # - add self when calling the writer methods(self.first_name = )
end
