require 'docking_station'
describe DockingStation do
 
 let(:station) {DockingStation.new}
 let(:bike) {Bike.new}
  
  it "should accept bikes" do
    expect(station.bike_count).to eq(0)
    station.dock(bike)
    expect(station.bike_count).to eq(1)
  end
	it "should release a bike" do 
	 station.dock(bike)
	 expect(station.bike_count).to eq(1)
	 station.release(bike)
	 expect(station.bike_count).to eq(0)
  end 
end