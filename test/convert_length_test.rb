require 'minitest/autorun'
require './lib/convert_length'

class ConvertLengthTest < Minitest::Test
  def test_convert_length
    assert_equal 39.37, convert_length(1, from: :m, to: :in)
    assert_equal 0.38, convert_length(15, from: :in, to: :m)
    assert_equal 10670.73, convert_length(35000, from: :ft, to: :m)
    assert_equal 120.03, convert_length(10, from: :ft, to: :in)
  end
end