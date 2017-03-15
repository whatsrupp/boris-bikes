require 'docking_station'

describe DockingStation do
  it {is_expected.to respond_to :release_bike}

  it 'releases working bikes' do
    bicycle = subject.release_bike
    expect(bicycle).to be_working
  end

  it "Docks a bike" do
    expect(subject).to respond_to(:dock).with(1).argument
  end

end
