require_relative "../2"

require "test/unit"

class TestSimpleNumber < Test::Unit::TestCase

  def test_second
    matrix_res = [
      [21, 63, 35, 63, 0, 7, 21, 14],
      [42, 63, 35, 56, 14, 63, 0, 35],
      [35, 42, 63, 42, 42, 0, 56, 42],
      [42, 21, 42, 56, 42, 42, 35, 35],
      [7, 21, 49, 42, 7, 35, 49, 42],
      [42, 0, 63, 63, 0, 56, 21, 35],
      [7, 42, 14, 14, 14, 56, 56, 35],
      [42, 28, 7, 28, 21, 42, 21, 49]]
      matrix = [
        [3, 9, 5, 9, 0, 1, 3, 2],
        [6, 9, 5, 8, 2, 9, 0, 5],
        [5, 6, 9, 6, 6, 0, 8, 6],
        [6, 3, 6, 8, 6, 6, 5, 5],
        [1, 3, 7, 6, 1, 5, 7, 6],
        [6, 0, 9, 9, 0, 8, 3, 5],
        [1, 6, 2, 2, 2, 8, 8, 5],
        [6, 4, 1, 4, 3, 6, 3, 7]]

    assert_equal(matrix_res, Two.new.task(matrix))
  end

end

