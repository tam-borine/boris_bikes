require './lib/docking_station.rb'

describe 'DockingStation' do

it { expect(DockingStation.new).to respond_to(:release_bike) }
it { expect(Bike.new).to respond_to(:working?) }
it { expect(DockingStation.new).to respond_to(:dock).with(1).argument }
it { expect(DockingStation.new).to respond_to(:bikes)}

describe '#dock' do
	subject = DockingStation.new
	it { 20.times do subject.dock(Bike.new) end; expect { subject.dock(Bike.new) }.to raise_error("Full!")}
end

	describe '#release_bike' do
		#it { bike = Bike.new ; DockingStation.new.dock(bike); expect(DockingStation.new.release_bike).to eq(bike)}
		it { expect{ DockingStation.new.release_bike }.to raise_error("No bikes available")}
		#it { expect { raise StandardError}.to raise_error}
	end
#it { bike = subject.release_bike; expect(bike).to be_working}

end
