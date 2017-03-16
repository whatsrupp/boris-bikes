class Van

  def initialize
    @van_bikes = []

  end
  def load_van(bikes)
    van_bikes << bikes
    van_bikes.flatten!
  end


private

attr_accessor :van_bikes

end
