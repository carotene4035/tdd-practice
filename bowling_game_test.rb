require 'minitest/autorun'
require_relative 'bowling_game'

class BowlingGameTest < MiniTest::Unit::TestCase
  def setup
    @game = BowlingGame.new
  end

  def test_all_gutter_game
    record_many_shot(20, 0)
    assert_equal 0, @game.score
  end

  def test_すべての投球で１つだけ倒した
    record_many_shot(20, 1)
    assert_equal 20, @game.score
  end

  private

  def record_many_shot(count, pins)
    count.times do
      @game.record_shot(pins)
    end
  end
end
