require_relative 'bike'

class DockingStation
  attr_reader :bike
  def initialize
    @bike = nil
  end

  def release_bike
    fail "No Bikes" unless @bike
    @bike
  end

  def dock(bike)
    fail "Dock Full" if @bike
    @bike = bike
  end


end
