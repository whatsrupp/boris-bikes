require 'docking_station'

describe DockingStation do
  it {is_expected.to respond_to :release_bike}

  it 'releases working bikes' do
    bicycle = subject.release_bike
    expect(bicycle).to be_working
  end

  it "checks dock method" do
    expect(subject).to respond_to(:dock).with(1).argument
  end

  it "returns a bike" do
    bike = subject.release_bike
    expect(subject.dock(bike)).to be_a(Bike)
  end

  it "shows if there is a docked bike" do
    expect(subject).to respond_to(:bike)
  end




end
