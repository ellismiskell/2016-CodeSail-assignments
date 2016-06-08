require 'minitest/autorun'
require 'fractions'

class FractionTest < Minitest::Test
  def setup
    @a = Fractions.new(1,2)
    @b = Fractions.new(2,4)
  end
  def test_to_decimal
    x = @a.to_decimal
    assert_equal(0.5, x)
  end
  def test_to_string
    y = @a.to_string
    assert_equal("1/2", y)
  end
  def test_simplify
    z = @b.simplify
    assert_equal("1/2", z)
  end
end
