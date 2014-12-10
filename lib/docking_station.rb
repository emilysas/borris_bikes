
require_relative 'bike_container'

class DockingStation

include BikeContainer 

@@stations = []

 def initialize(options = {})
    self.capacity = options.fetch(:capacity, capacity)
	@@stations << self  
  end

  def self.stations
  	@@stations
  end
end


