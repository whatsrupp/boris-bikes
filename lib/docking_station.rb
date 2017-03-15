require_relative 'bike'


class DockingStation
  public

  attr_reader :bikes, :capacity
  def initialize
    @bikes = []
    @capacity = 20
  end

  def release_bike
    fail "No Bikes" if empty?
    @bikes.pop
  end

  def dock(bike)
    fail "Dock Full" if full?
    @bikes << bike

  end

  private

  def empty?
    @bikes.empty?
  end

  def full?
    @bikes.count >= @capacity 
  end




end
