
require 'bike'


describe Bike do

let(:bike) {Bike.new}

  it "should not be broken" do
    bike = Bike.new
    expect(bike).not_to be_broken
  end

  it "should be able to be broken" do
    bike = Bike.new
    bike.break!
    expect(bike).to be_broken
  end

  it "should be able to be fixed" do
    bike = Bike.new
    bike.break!
    bike.fix!
    expect(bike).not_to be_broken
  end

end