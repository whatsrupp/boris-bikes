require 'docking_station'

describe DockingStation do

  describe "#release_bike" do

    it "releases a bike" do
      is_expected.to respond_to :release_bike
    end

    it "no bike released if no bikes" do
      expect { subject.release_bike }.to raise_error("No Bikes")
    end

    it "releases a bike" do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq(bike)
    end
  end


  describe "#dock" do

    it "checks dock method" do
      expect(subject).to respond_to(:dock).with(1).argument
    end

    it "bike is docked" do
      bike = Bike.new
      expect(subject.dock(bike)).to eq bike
    end

    it "Cannot dock if the station is full" do
      bike1 = Bike.new
      subject.dock(bike1)
      bike2 = Bike.new
      expect {subject.dock(bike2)}.to raise_error("Dock Full")
    end

  end

end
