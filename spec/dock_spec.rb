require './lib/docking_station.rb'

describe 'DockingStation' do

it { expect(DockingStation.new).to respond_to(:release_bike) }
it { expect(Bike.new).to respond_to(:working?)}

end
