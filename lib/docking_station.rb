require_relative 'bike'

class DockingStation
  attr_reader :bikes, :capacity
  def initialize
    @bikes = []
    @capacity = 20
  end

  def release_bike
    fail "No Bikes" if @bikes.empty?
    @bikes.pop
  end

  def dock(bike)
    fail "Dock Full" if @bikes.length >= @capacity
    @bikes << bike

  end


end
