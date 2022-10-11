#! bin/usr/env ruby

require_relative 'classes/animal'

puts "-------"
puts "Creating Tam..."
tam = Animal.create_a_cat
puts tam.noise
puts tam.color

puts "-------"

puts "Total Animal Count: "
puts Animal.total_animal_count

puts "-------"
puts "Creating Jam..."
jam = Animal.new({noise: "Bark!", color: "Black"})
puts jam.noise
puts jam.color

puts "-------"

puts "Total Animal Count: "
puts Animal.total_animal_count

puts "-------"
