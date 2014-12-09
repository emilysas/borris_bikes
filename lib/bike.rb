class Bike
	def initialize
		@broken = false
	end
 
  def break!
 	  @broken = true
  end

  def broken? 
	  @broken
  end

  def fix!
    @broken = false
  end

end

