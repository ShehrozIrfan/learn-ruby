#! bin/usr/env ruby

require_relative 'classes/radio'

r1 = Radio.fm
puts r1.status
puts "-----"
r1.volume = 8
puts r1.volume
puts "-----"
r1.freq = 90.0
puts r1.freq
puts "-----"
puts r1.status

r2 = Radio.am
puts r2.status
puts "-----"

