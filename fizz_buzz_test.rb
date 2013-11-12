require 'test/unit'
require_relative 'fizz_buzz'

class TestFizzBuzz < Test::Unit::TestCase

  def setup
    @fizz_buzz = FizzBuzz.new
  end

  def test_fizz 
    sample = [3, 6, 9, 12]
    sample.each do |s|
      expected = @fizz_buzz.play s
      assert_equal expected, "Fizz"
    end
  end

  def test_buzz
    sample = [5, 10, 20, 25]
    sample.each do |s|
      expected = @fizz_buzz.play s
      assert_equal expected, "Buzz"
    end
  end

  def test_fizzbuzz
    sample = [15, 30, 45, 60]
    sample.each do |s|
      expected = @fizz_buzz.play s
      assert_equal expected, "FizzBuzz"
    end
  end

  def test_nothing
    sample = [2, 4, 8, 16]
    sample.each do |s|
      expected = @fizz_buzz.play s
      assert_equal expected, ""
    end

  end

end
