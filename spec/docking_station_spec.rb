require 'docking_station'

describe DockingStation do
  it "releases a bike" do
    is_expected.to respond_to :release_bike
  end

  describe "#release_bike" do

    it "no bike released if no bikes" do
      expect { subject.release_bike }.to raise_error("No bikes")
    end
    
    it "releases a bike" do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq(bike)
    end
  end

  it 'releases working bikes' do
    bicycle = Bike.new
    subject.dock(bicycle)
    expect(bicycle).to be_working
  end

  it "checks dock method" do
    expect(subject).to respond_to(:dock).with(1).argument
  end

  it "bike is docked" do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
  end



end
