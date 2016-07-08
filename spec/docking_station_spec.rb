require 'docking_station.rb'

describe DockingStation do

  let(:bike) { double :bike }
  it { is_expected.to respond_to :release_bike }
  it { is_expected.to respond_to :dock }
  it { is_expected.to respond_to :bikes }
  it { is_expected.to respond_to :capacity }


  it 'raises an error' do
    expect { subject.release_bike }.to raise_error 'No bike available'
  end

  it 'docks a bike' do
    subject.capacity.times { subject.dock(bike) }
    expect { subject.dock(bike)  }.to raise_error 'Docking station full'
  end

  it 'releases working bikes' do
      bike = double(:working? => true)
      subject.capacity.times { subject.dock(bike)  }
      subject.capacity.times { subject.release_bike }
      expect { subject.release_bike }.to raise_error 'No bike available'
    end

  it "doesn't release broken bikes" do
    bike = double(:report => false, :working? => false)
    bike.report
    subject.capacity.times { subject.dock(bike)  }
    expect { subject.release_bike }.to raise_error 'No working bikes available'
  end

end
