require './lib/docking_station'

docking_station = DockingStation.new
puts "creating docking_station"
puts docking_station

bike1 = Bike.new
puts "creating a bike"
puts bike1

bike2 = Bike.new
puts "creating a bike"
puts bike2

bike3 = Bike.new
puts "creating a bike"
puts bike3

puts "bike reports"
puts bike1.report, bike2.report, bike3.report


puts "is bike working?"
puts bike1.working?

#puts "Docking a bike"
#puts docking_station.dock(bike2)

puts "Docking a bike"
puts docking_station.dock(bike1)
puts docking_station.dock(bike2)
puts docking_station.dock(bike3)
#puts "releasing a bike"
#puts docking_station.release_bike

puts "creating a van"
puts van = Van.new

puts "creating a garage"
puts garage = Garage.new

puts "van takes docking_station and garage"
puts van.take(docking_station, garage)

#puts "Garage repairs bike"
#puts garage.repair
#puts "van distributes bike (back to docking station)"
#puts van.distribute(bike1)



#puts "garage repairs bike"
#puts garage.repair(bike)
