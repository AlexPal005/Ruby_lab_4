require_relative "../3"

require "test/unit"

class TestSimpleNumber < Test::Unit::TestCase

  def test_third
    assert_equal( [[2,9,9],
                          [9,2,9],
                           [9,9,2]], Solve.new.create_matrix(3))
    assert_equal([1,2,3], Solve.new.create_vector(3))
    assert_equal( [0.3, 0.158, 0.015,  -0.128] , Solve.new.solve(4))
  end

end
