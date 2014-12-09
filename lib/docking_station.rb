class DockingStation 
  
  def initialize
  	@bikes = []
  end

  def bike_count
  	@bikes.count
  end
  
  def dock(bike)
   @bikes << bike   	
  end

  def release(bike)
   @bikes.pop
  end

end