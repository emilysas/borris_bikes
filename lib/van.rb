class Van
  include BikeContainer
  include ObjectSpace

  def initialize(options = {})
  	self.capacity=(options.fetch(:capacity, capacity))
  end

  def station_pickup(station)
  	broken_bikes = station.broken_bikes
  	broken_bikes.each do |bike|
  		dock(bike)
  	end
  end


end
