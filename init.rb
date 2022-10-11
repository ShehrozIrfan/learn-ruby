#! user/bin/env ruby

require_relative 'classes/person'
require_relative 'classes/animal'

animal = Animal.new
animal.noise = "Meowwww!"
puts animal.noise
