
describe Station do
 
 let (:station) {Station.new}
 let (:bike) {Bike.new}
  
  it "should accept bikes"
    expect(station.bike_count).to eq(0)
    station.dock(bike)
    expect(station.bike_count).to eq(1)
  end
	
end