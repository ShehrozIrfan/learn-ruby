#! bin/usr/env ruby

require_relative 'classes/animal'

puts '------'
puts Animal.species
puts '------'
Animal.species = ['Goat', 'Cow', 'Camel']
puts Animal.species
puts '------'
