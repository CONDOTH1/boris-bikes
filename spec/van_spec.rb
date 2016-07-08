require 'docking_station'

describe Van do
  let(:bike) {double :bike}
  it {is_expected.to respond_to :take}
  it {is_expected.to respond_to :distribute}

  it 'takes a bike' do
    bike = Bike.new
    docking_station = DockingStation.new
    garage = Garage.new
    bike.report
    docking_station.dock(bike)
    expect(subject.take(docking_station, garage)).to eq([bike])
  end

  it 'distributes a bike (back to docking station)' do

  end


end
