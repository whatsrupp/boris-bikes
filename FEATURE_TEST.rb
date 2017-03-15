require './lib/docking_station'

station = DockingStation.new
bike = Bike.new
bike.working?
station.dock(bike)
station.release_bike
station.release_bike
station.capacity.times {station.dock(Bike.new)}
station.dock(Bike.new)
