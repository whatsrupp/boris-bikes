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
      subject.bikes.push(bike)
      expect(subject.release_bike).to eq(bike)
    end

    it "raises bike broken if bike broken" do
      bike = Bike.new
      bike.break
      subject.bikes.push(bike)
      expect {subject.release_bike}.to raise_error("Bike Broken")
    end
  end

  describe "#dock" do

    it "checks dock method" do
      expect(subject).to respond_to(:dock).with(1).argument
    end

    it "checks bike has been added to existing bikes" do
      bike = Bike.new
      expect(subject.dock(bike)).to eq (subject.bikes << bike)
    end

    it "Cannot dock if the station is full" do
      subject.capacity.times {subject.dock(Bike.new)}
      expect {subject.dock(Bike.new)}.to raise_error("Dock Full")
    end

    it "Reports bike as not working when docked" do
      bike = Bike.new
      subject.dock(bike)
      expect { bike.working?.to eq false}
    end

    it "Docks bike when bike is broken" do
      bike = Bike.new
      bike.break
      subject.dock(bike)
      expect(subject.bikes.last).to eq bike
    end

  end

  it "Checks default maximum capacity" do
    expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
  end

end
