require_relative 'bike'
require_relative 'bike_container'

class DockingStation 
  
include BikeContainer

  @default_capacity = 25

  def dock(bike)
    raise "Station is full" if full?
    super
  end

  def available_bikes
    @bikes.reject{|bike| bike.broken? }
  end

end


