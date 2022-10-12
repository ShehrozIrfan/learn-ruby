#! bin/usr/env ruby

require_relative 'classes/animal'
require_relative 'classes/cow'
require_relative 'classes/cat'

generic = Animal.new
puts generic.noise # returns nothing

cow = Cow.new
puts cow.noise

cat = Cat.new
puts cat.noise
