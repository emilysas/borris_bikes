require 'docking_station'

describe DockingStation do
 
 let(:station) {DockingStation.new(:capacity => 25)}
 let(:bike) {double :bike}
  
  it "should allow setting default capacity on initializing" do
    expect(station.capacity).to eq(25)
  end

end