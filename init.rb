#! bin/usr/env ruby

require_relative 'classes/namespacing/date'
require 'date'

# using our Date class
d = MakeMatch::Date.new

d.location = "Lahore"
puts d.location

# using the ruby Date class
d.date = Date.today
puts d.date
