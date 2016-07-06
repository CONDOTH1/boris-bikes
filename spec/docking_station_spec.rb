require 'docking_station'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }

  it 'releases working bike' do
    bike = Bike.new
    expect(bike).to respond_to :working?
  end

it { is_expected.to respond_to(:dock).with(1).argument }

it { is_expected.to respond_to(:bikes)}


it 'returns docked bikes' do
  bike = Bike.new
  expect { subject.dock(bike).to eq bike }
end

describe '.release_bike' do
  it 'only allows twenty bikes out' do
    expect {subject.release_bike}.to raise_error("No bikes")
  end
end

describe '.dock' do
  it 'only allows twenty bikes to be docked' do
    DockingStation::DEFAULT_CAPACITY.times{ subject.dock(Bike.new) }
    expect { subject.dock Bike.new }.to raise_error ("No space")
  end
end
end
