
require 'van'


describe Van do
	
  let(:van) {Van.new(:capacity => 10)}
  let(:bike) {Bike.new}

 it "should allow setting default capacity on initializing" do
    expect(van.capacity).to eq(10)
  end


end

