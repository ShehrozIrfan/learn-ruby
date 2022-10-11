class Animal
  attr_accessor :noise

  # def initialize
  #   @noise = 'Mewoooww!!'
  #   puts "Animal instantiated"
  # end

  # we can also pass options hash to initialize
  def initialize(options={})
    @noise = options[:noise] || "Bark...!"
  end
end
