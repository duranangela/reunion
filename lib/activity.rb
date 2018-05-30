class Activity
  attr_reader :name, :base_cost, :cost_per
  attr_accessor :participants

  def initialize(name, base_cost, cost_per)
    @name = name
    @participants = Hash.new
    @base_cost = base_cost
    @cost_per = cost_per
  end

  def add_participants(participants)
    participants.each do |person, amt_paid|
      @participants[person] = amt_paid
    end
  end

  def total_cost
    participant_cost = @participants.keys.count * @cost_per
    participant_cost + @base_cost
  end

  def total_cost_per
    total_cost / @participants.keys.count
  end

  def totals_owed
    @participants.each do |person, amt_paid|
      @participants[person] = total_cost_per - amt_paid
    end
  end

end
