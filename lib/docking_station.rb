require_relative 'bike'

class DockingStation
  DEFAULT_CAPACITY = 20
  attr_accessor  :bikes
  attr_writer    :capacity

  def initialize(number = DEFAULT_CAPACITY)
      @bikes = []
      @capacity = number
  end

  def release_bike
      fail "No bikes" if empty?#unless !@bikes.empty?
      @bikes.pop
  end

  def dock (bike)
    fail "No space" if full? #if @bikes.count >= 20
    @bikes << bike
  end

private
  def full?
    true if @bikes.count == DEFAULT_CAPACITY
  end

  def empty?
    true if @bikes.count == 0
  end


end
