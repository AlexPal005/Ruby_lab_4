require_relative "../1"

require "test/unit"

class TestSimpleNumber < Test::Unit::TestCase

  def test_first
    assert_equal([21, 15, 12, 15, 13, 19, 16, 11, 6, 13, 17, 8, 17, 5],
                 First.new.task([16, 19, 13, 15, 12, 15, 21, 5, 17, 8, 17, 13, 6, 11]))
  end

end
