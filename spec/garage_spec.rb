require 'garage'


describe Garage do 
  

  let(:working_bike) {double :bike, broken?: false, is_a?: Bike}
  let(:broken_bike) {double :bike, broken?: true, is_a?: Bike}
  let(:van) {double :van, garage_pickup: [working_bike], release: nil} 
  
  let(:garage) {Garage.new(:capacity => 30)}

  it "should allow setting default on initialization" do
    expect(garage.capacity).to eq(30)
  end

  it "should fix broken bikes" do
    expect(broken_bike).to receive(:fix!)
    garage.accept(broken_bike)
    
  end  




end
