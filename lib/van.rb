class Van

  def take(docking_station, garage)
    bikes = docking_station.bikes.select {|bike| bike unless bike.working?}
    garage.repair(bikes)
  end

  def distribute(bike)
    bike
  end

end
