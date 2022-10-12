require_relative 'nameable'
require_relative 'location_info'

class Person
  # Note: In ruby, include is only used for including modules
  include Nameable
  include LocationInfo
end
