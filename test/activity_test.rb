require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/activity'

class ActivityTest < Minitest::Test

  def test_it_has_attributes
    a = Activity.new("Volleyball", 10, 5)
    assert_instance_of Activity, a
    assert_equal "Volleyball", a.activity[:name]
    assert_equal 10, a.activity[:base_cost]
    assert_equal 5, a.activity[:cost_per]
  end

  def test_it_starts_with_no_participants
    a = Activity.new("Volleyball", 10, 5)
    assert_equal Hash.new, a.activity[:participants]
  end

  def test_it_can_add_participants
    a = Activity.new("Volleyball", 10, 5)
    a.add_participants({'Bob' => 5, 'Alice' => 4})
    assert_equal ({'Bob' => 5, 'Alice' => 4}), a.activity[:participants]
  end

  # def test_it_can_calculate_total_cost
  #   a = Activity.new("Volleyball", 6, 5)
  #   a.add_participants({'Bob' => 5, 'Alice' => 4, 'Fred' => 7})
  #   assert_equal 21, a.total_cost
  # end
  #
  # def test_ic_can_calculate_total_cost_per_person
  #   a = Activity.new("Volleyball", 6, 5)
  #   a.add_participants({'Bob' => 5, 'Alice' => 4, 'Fred' => 7})
  #   assert_equal 7, a.total_cost_per
  # end
  #
  # def test_it_can_calculate_total_owed_by_each_participant
  #   a = Activity.new("Volleyball", 6, 5)
  #   a.add_participants({'Bob' => 5, 'Alice' => 4, 'Fred' => 7})
  #   assert_equal ({'Bob' => 2, 'Alice' => 3, 'Fred' => 0}), a.totals_owed
  # end

end
