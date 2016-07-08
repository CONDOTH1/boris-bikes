require_relative 'bike'

class DockingStation
  attr_accessor :bikes
  attr_accessor :capacity

  DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  def dock(bike)
    fail 'Docking station full' if full?
    @bikes << bike
  end

  def release_bike
    fail 'No bike available' if empty?
    @bikes.pop
  end

  private
  def full?
    @bikes.count >= @capacity
  end

  private
  def empty?
    @bikes.empty?
  end

end
