require './lib/bike.rb'
#require_relative 'Bike.rb'

class DockingStation

DEFAULT_CAPACITY = 20

attr_accessor :capacity

  def initialize(capacity =DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

 def dd
   return DEFAULT_CAPACITY
end


  def release_bike
    raise 'No bikes available' if no_bikes?
    @bikes.pop
  end

  def dock(bike)
    raise 'Full!' if full?
    @bikes << bike
  end

  private

attr_reader :bikes

  def full?
    @bikes.length >= @capacity
  end

  def no_bikes?
    @bikes.empty?
  end

end
