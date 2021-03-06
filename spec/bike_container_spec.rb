require './lib/bike_container'

class ContainerHolder; include BikeContainer; end

describe BikeContainer do

  let(:bike) {double :bike, is_a?: Bike}
  let(:working_bike) {double :bike, broken?: false, is_a?: Bike}
  let(:broken_bike) {double :bike, broken?: true, is_a?: Bike}
  let(:holder) { ContainerHolder.new }
 
  def station_with_two_bikes
    holder.dock(working_bike)
    holder.dock(broken_bike)
  end

  it "should accept bikes" do
    expect(holder.bike_count).to eq(0)
    holder.dock(bike)
    expect(holder.bike_count).to eq(1)
  end

  it "should release a bike" do 
    holder.dock(bike)
    expect(holder.bike_count).to eq(1)
    holder.release(bike)
    expect(holder.bike_count).to eq(0)
  end 

  it "should not release a bike that doesn't exist" do
    expect(lambda { holder.release(bike) }).to raise_error(RuntimeError, 'No Bikes to Release')
  end

  it "should not try to release anything other bikes" do
    holder.dock(bike)
    expect(lambda { holder.release(nil) }).to raise_error(RuntimeError, 'Can only release bikes')
  end

  it "should return argument error if no arguments given" do
    holder.dock(bike)
    expect(lambda { holder.release() }).to raise_error(ArgumentError, "wrong number of arguments (0 for 1)")
  end 

  it "should know when it's full" do
    expect(holder).not_to be_full
    10.times {holder.dock(Bike.new)}
    expect(holder).to be_full
  end

  it "should not accept a bike if it's full" do
    10.times { holder.dock(Bike.new) }
    expect(lambda { holder.dock(bike) }).to raise_error(RuntimeError, 'Station is full')
  end

  it "should provide a list of available bikes" do
    station_with_two_bikes
    expect(holder.available_bikes).to eq([working_bike])
  end
  it "should provide a list of broken bikes" do
    station_with_two_bikes
    expect(holder.broken_bikes).to eq([broken_bike])
  end

  it "should be able to transfer to another container" do 
    allow(garage).to receive(:release)
    expect(van).to receive(:dock).with working_bike
    van.transfer(garage.available_bikes, from: garage)
  end

end