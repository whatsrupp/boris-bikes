require_relative 'bike'


class DockingStation
  public

  DEFAULT_CAPACITY = 20

  attr_reader :bikes, :capacity
  def initialize
    @bikes = []
    @capacity = DEFAULT_CAPACITY
  end

  def release_bike
    fail "No Bikes" if empty?
    @bikes.pop
  end

  def dock(bike)
    fail "Dock Full" if full?
    bike.break
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
