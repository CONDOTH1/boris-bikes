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

puts "Docking a bike"
puts docking_station.dock(bike2)

puts "Docking a bike"
puts docking_station.dock(bike1)

puts "bike reports"
puts bike1.report

puts "is bike working?"
puts bike1.working?

puts "releasing a bike"
puts docking_station.release_bike
