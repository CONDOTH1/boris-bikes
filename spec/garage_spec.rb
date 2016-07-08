require 'docking_station'

describe Garage do
  it {is_expected.to respond_to :repair}

  it 'repairs bikes' do
  bike = Bike.new
  bike.report
  bikes = [bike]
  bike = bikes.pop
  expect {subject.repair(bike)}.to change(bike, :working?)
  end

end
