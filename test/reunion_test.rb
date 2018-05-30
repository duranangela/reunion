require 'minitest'
require 'minitest/test'
require 'minitest/autorun'
require './lib/reunion'

class ReunionTest < Minitest::Test

  def test_it_has_a_location
    r = Reunion.new("Hawaii")
    assert_instance_of Reunion, r
    assert_equal "Hawaii", r.location
  end

  def test_it_starts_with_no_activities
    r = Reunion.new("Hawaii")
    assert_equal [], r.activities
  end

  def test_it_can_add_activities
    r = Reunion.new("Hawaii")
    r.add_activity("Beer Pong", 10, 5)
    assert_equal 1, r.activities.count
  end

end
