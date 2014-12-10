require_relative 'bike'
require_relative 'bike_container'
require_relative 'docking_station'

class Van
  include BikeContainer
  include ObjectSpace

  def initialize(options = {})
  	self.capacity=(options.fetch(:capacity, capacity))
  end

  def station_pickup(bike)
  	self.dock(bike) if bike.broken?
  end


end
