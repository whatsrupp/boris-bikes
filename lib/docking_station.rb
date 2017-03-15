require_relative 'bike'

class DockingStation
  attr_reader :bike
  def initialize
    @bike = nil
  end

  def release_bike
    raise "No bikes" if @bike == nil
    Bike.new
  end

  def dock(bike)
    @bike = bike
  end


end
