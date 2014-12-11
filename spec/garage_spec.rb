require 'garage'


describe Garage do 
	
	let(:working_bike) {double :bike, broken?: false}
	let(:broken_bike) {double :bike, broken?: true }
	let(:van) {double :van, garage_pickup: [working_bike], release: []} 
	
	let(:garage) {Garage.new(:capacity => 30)}

	it "should allow setting default on initialization" do
		expect(garage.capacity).to eq(30)
	end




end
