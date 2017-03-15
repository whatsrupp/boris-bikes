require 'docking_station'

describe DockingStation do
  it {is_expected.to respond_to :release_bike}

  it 'releases working bikes' do
    bicycle = Bike.new
    subject.dock(bicycle)
    expect(bicycle).to be_working
  end

  it "checks dock method" do
    expect(subject).to respond_to(:dock).with(1).argument
  end

  it "returns a bike" do
    bike = Bike.new
    expect(subject.dock(bike)).to be_a(Bike)
  end

  it "no bike released if no bikes" do
    expect { raise subject.release_bike }.to raise_error("No bikes")
  end

end
