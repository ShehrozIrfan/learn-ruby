require_relative 'nameable'
require_relative 'location_info'

class Customer
  include Nameable
  include LocationInfo
end
