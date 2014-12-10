require './lib/van.rb'


describe Van do
	
  let(:van){Van.new(capcity = DEFAULT_CAPACITY)}
  let(:bike){Bike.new}

  #it "should be able to go to stations" do
   # bike.break!
   # expect(van)
 # end

  it "should not dock working bikes" do
  	expect(van.dock(bike)).to eq(0) 
  end

  #it "should be able to go to garage" do
  #end

end

