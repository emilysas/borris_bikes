require_relative 'bike'
require_relative 'bike_container'
require_relative 'docking_station'

class Van
  include BikeContainer
  include ObjectSpace

  def initialize(options = {})
  	self.capacity=(options.fetch(:capacity, capacity))
  end

  def station_pickup(station)
  	broken_bikes = station.broken_bikes
  	broken_bikes.each {|bike| dock(bike)}
  end


end
