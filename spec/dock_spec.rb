require './lib/docking_station.rb'

describe 'DockingStation' do

subject = DockingStation.new

it { expect(subject).to respond_to(:release_bike) }
it { expect(Bike.new).to respond_to(:working?) }
it { expect(subject).to respond_to(:dock).with(1).argument }
it { expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY}

describe '#dock' do

	it { subject.capacity.times do subject.dock(Bike.new) end; expect { subject.dock(Bike.new) }.to raise_error("Full!")}
end

	describe '#release_bike' do
		#it { bike = Bike.new ; subject.dock(bike); expect(subject.release_bike).to eq(bike)}
		it { DockingStation::DEFAULT_CAPACITY.times do subject.release_bike end; expect{ subject.release_bike}.to raise_error("No bikes available")}
		#it { expect { raise StandardError}.to raise_error}
	end
#it { bike = subject.release_bike; expect(bike).to be_working}

#describe 'initialization' do
  subject { DockingStation.new }
  let(:bike) { Bike.new }
  it 'defaults capacity' do
    described_class::DEFAULT_CAPACITY.times do
      subject.dock(bike)
    end
    expect{ subject.dock(bike) }.to raise_error 'Docking station full'
  end
#end
end
