require_relative 'bike'
require_relative 'van'
require_relative 'garage'



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
    fail "Bike Broken" unless @bikes.last.working?
    @bikes.pop
  end

  def dock(bike)
    fail "Dock Full" if full?
    @bikes << bike
  end

  def remove_bikes (van = Van.new)
    van_bikes = @bikes.select {|bike| !bike.working?}
    van.load_van(van_bikes)
    @bikes.select! {|bike| bike.working?}
  end

  private

  def empty?
    @bikes.empty?
  end

  def full?
    @bikes.count >= @capacity
  end




end
