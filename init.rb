#! bin/usr/env ruby

# namespacing
require_relative 'classes/namespacing/date'
require 'date'

# using our Date class
d = MakeMatch::Date.new

d.location = "Lahore"
puts d.location

# using the ruby Date class
d.date = Date.today
puts d.date

puts "========="

# mixins
require_relative 'classes/mixins/person'
require_relative 'classes/mixins/customer'
require_relative 'classes/mixins/supplier'
require_relative 'classes/mixins/nameable'
require_relative 'classes/mixins/location_info'

p = Person.new
p.first_name = "Shehroz"
p.last_name = "Irfan"
puts p.full_name

puts "======="

c = Customer.new
c.first_name = "John"
c.last_name = "Doe"
puts c.full_name

puts "======="

s = Supplier.new
s.first_name = "Salena"
s.last_name = "Smith"
puts s.full_name
s.city = "London"
s.state = "ABC"
s.zip = 454323
puts s.city_state_zip
