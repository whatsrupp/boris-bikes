require 'van'


describe Van do

  let (:bike) {double :bike}

  it "has a load van method" do
    expect(subject).to respond_to :load_van
  end

  it "loads an array of bikes" do
    bikes = []
    10.times {bikes<<bike}
    expect(subject.load_van(bikes)).to eq bikes
  end


end
