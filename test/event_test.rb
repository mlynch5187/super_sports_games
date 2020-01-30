require 'minitest/autorun'
require 'minitest/pride'
require './lib/event'

class EventTest < MiniTest::Test

  def setup
    @event = Event.new("Curling", [24, 30, 18, 20, 41])
  end

  def test_it_exists
    assert_instance_of Event, @event
  end

  def test_it_has_a_name
    assert_equal "Curling", @event.name
  end

  def test_event_has_ages
    assert_equal [24, 30, 18, 20, 41], @event.ages
  end

  def test_oldest_participant_can_be_retrieved
    assert_equal 41, @event.max_age
  end

  def test_youngest_participant_can_be_retrieved
    assert_equal 18, @event.min_age
  end

  def test_average_age_can_be_retrieved
    assert_equal 26.6, @event.average_age
  end

  def test_standard_deviation_of_ages_can_be_retrieved
    assert_equal 8.28, @event.standard_deviation_age
  end
end
