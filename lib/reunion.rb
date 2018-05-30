require './lib/activity'

class Reunion
  attr_reader :location
  attr_accessor :activities

  def initialize(location)
    @location = location
    @activities = []
  end

  def add_activity(activity, base_cost, cost_per)
    new_activity = Activity.new(activity, base_cost, cost_per)
    @activities << new_activity
  end

end
