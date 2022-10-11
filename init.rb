#! user/bin/env ruby

require_relative 'classes/person'
require_relative 'classes/animal'
require_relative 'classes/dice'
require_relative 'classes/dice_set'

ds = DiceSet.new
ds.roll
puts ds.display

response = nil
until response == "q"
  puts "Type 'r' to roll and 'q' to quit"
  print "> "
  response = gets.chomp

  if response == "r"
    ds.roll
    puts ds.display
  end
end
