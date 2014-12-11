
require 'van'

describe Van do
  
  let(:van) {Van.new(:capacity => 10)}
  let(:bike) {double :bike}
  let(:working_bike){double :bike, broken: false, is_a?: Bike}
  let(:broken_bike){double :bike, broken: true, is_a?: Bike}
  let(:station) {double :station, capacity: 25, bike_count: [broken_bike, working_bike], 
    broken_bikes: [broken_bike], release: []  }
  let(:garage) {double :garage, available_bikes: [working_bike], release: []}

  it "should allow setting default capacity on initializing" do
    expect(van.capacity).to eq(10)
  end

  it "should pick up broken bikes from a station" do
    van.station_pickup(station)
    expect(van.bike_count).to eq(1) 
  end

  it "should pick up fixed bikes from a garage" do
    van.garage_pickup(garage)
    expect(van.bike_count).to eq(1)
  end

end



