require "test_helper"

class TestCream < Minitest::Test
  attr_reader :cache, :duration_seconds

  def setup
    @duration_seconds = 1
    @cache = Cream::Cache.new(duration_seconds)
  end

  def test_unexpired_get
    value = "unexpired"
    cache.set(:test, value)

    assert_equal(value, cache.get(:test))
  end

  def test_expired_get
    value = "unexpired"
    cache.set(:test, value)
    sleep 1

    assert_nil(cache.get(:test))
  end

  def test_get_after_reset
    value = "old"
    cache.set(:test, value)
    new_value = "new"
    cache.set(:test, new_value)

    assert_equal(new_value, cache.get(:test))
  end
end
