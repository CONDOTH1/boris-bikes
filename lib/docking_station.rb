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

    counter = 0
    while counter < @bikes.length
      if @bikes[counter].working?
        return @bikes.delete_at(counter)
      end
      counter += 1
    end

    fail 'No bike available' if empty?
    fail 'No working bikes available'
    #fail 'Bikes are broken' unless @bikes.last.working?


  end

  private
  def full?
    @bikes.count >= @capacity
  end

  def empty?
    @bikes.empty?
  end

  def broken?

  end

end
