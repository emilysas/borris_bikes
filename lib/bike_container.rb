module BikeContainer

  DEFAULT_CAPACITY = 10
  BROKEN_BIKES     = Proc.new {|bike| bike.broken? }

  attr_writer :capacity 

  def bikes
    @bikes ||= []
  end

  def capacity
    @capacity ||= DEFAULT_CAPACITY
  end

  def bike_count
    bikes.count
  end

  def dock(bike)
    raise "Station is full" if full?
    raise "Can only dock bikes" unless bike.is_a?(Bike)
    bikes << bike
  end

  def container_empty?
    bike_count <= 0
  end

  def release(bike)
    raise "No Bikes to Release" if container_empty?
    raise "Can only release bikes" unless bike.is_a?(Bike)
    bikes.delete(bike)
  end

  def full?
    bike_count == capacity
  end

  def available_bikes
    bikes.reject(&BROKEN_BIKES)
  end
  
  def broken_bikes
    bikes.select(&BROKEN_BIKES)
  end

  def transfer bikes, from: container
   bikes.each {|bike| self.dock(bike); from.release(bike)}
  end

end

#van.transfer station.broken_bikes, from: station

