#! bin/usr/env ruby

require_relative 'classes/animal'

# looping through the animal types, remember 'types' is a class method.
Animal.types.each do |type|
  puts type
end

puts "-------"

tam = Animal.create_a_cat
puts tam.noise
puts tam.color
