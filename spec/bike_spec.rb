describe Bike do
  it "should not be broken" do
    bike = Bike.new
    expect bike.not_to_be_broken
  end
end