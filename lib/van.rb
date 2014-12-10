require_relative 'bike'
require_relative 'bike_container'
require_relative 'docking_station'

class Van
include BikeContainer

  def initialize(options = {})
  	self.capacity=(options.fetch(:capacity, capacity))
  end


end
