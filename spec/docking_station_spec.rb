require 'docking_station.rb'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }
  it { is_expected.to respond_to :dock }
  it { is_expected.to respond_to :bikes }
  it { is_expected.to respond_to :capacity }


#describe '#release_bike' do

  it 'raises an error' do
    expect { subject.release_bike }.to raise_error 'No bike available'
  end

  it 'docks a bike' do
    bike = Bike.new
    subject.capacity.times { subject.dock(bike) }
    expect { subject.dock(bike) }.to raise_error 'Docking station full'
  end

  it 'releases working bikes' do
      bike = Bike.new
      subject.capacity.times { subject.dock(bike) }
      subject.capacity.times { subject.release_bike }

      expect { subject.release_bike }.to raise_error 'No bike available'
    end

  it "doesn't release broken bikes" do
    bike = Bike.new
    bike.report
    subject.capacity.times { subject.dock(bike) }
    expect { subject.release_bike }.to raise_error 'No working bikes available'


  end

            #expect(bike).to be_working




end
