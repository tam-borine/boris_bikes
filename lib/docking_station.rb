require './lib/bike.rb'
#require_relative 'Bike.rb'

class DockingStation

  def initialize
    @bikes = []
  end

attr_reader :bikes

  def release_bike
    raise 'No bikes available' unless @bikes.length > 0
    @bikes.pop
  end

  def dock(bike)
    raise 'Full!' if @bikes.length >= 20
    @bikes << bike
  end

end
