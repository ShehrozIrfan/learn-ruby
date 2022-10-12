require_relative 'nameable'
require_relative 'location_info'

class Person
  include Nameable
  include LocationInfo
end
