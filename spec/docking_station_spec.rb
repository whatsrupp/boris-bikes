require 'docking_station'

describe DockingStation do
  it {is_expected.to respond_to :release_bike}

  it 'releases working bikes' do
    bicycle = subject.release_bike
    expect(bicycle).to be_working
  end
end
