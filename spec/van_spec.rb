
require 'van'
require 'docking_station'
require 'byebug'

describe Van do
	
  let(:van) {Van.new(:capacity => 10)}
  let(:bike) {Bike.new}
  let(:station) {DockingStation.new(:capacity => 25)}

  def station_with_two_bikes
    @working_bike, @broken_bike = Bike.new, Bike.new
    @broken_bike.break!
    station.dock(@working_bike)
    station.dock(@broken_bike)
  end

  it "should allow setting default capacity on initializing" do
    expect(van.capacity).to eq(10)
  end

  it "should pick up broken bikes from a station" do
  	station_with_two_bikes
  	van.station_pickup(@working_bike)
  	van.station_pickup(@broken_bike)
  	#byebug
  	expect(van.bike_count).to eq(1) 
  end

end

