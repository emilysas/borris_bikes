
require 'van'

describe Van do
  
  let(:van) {Van.new(:capacity => 10)}
  let(:bike) {double :bike}
  let(:working_bike){double :bike, broken: false}
  let(:broken_bike){double :bike, broken: true}
  let(:station) {double :station, capacity: 25, broken_bikes: [broken_bike]}


  it "should allow setting default capacity on initializing" do
    expect(van.capacity).to eq(10)
  end

  it "should pick up broken bikes from a station" do
    van.station_pickup(station)
    expect(van.bike_count).to eq(1) 
  end

end


