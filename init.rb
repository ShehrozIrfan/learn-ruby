#! user/bin/env ruby

require_relative 'classes/person'
require_relative 'classes/animal'

# person = Person.new
# puts person.say_hello

animal = Animal.new
animal.set_noise
puts animal.make_noise
