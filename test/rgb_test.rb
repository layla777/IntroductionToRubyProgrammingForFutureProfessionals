require 'minitest/autorun'
require './lib/rgb'

class RgbTest < Minitest::Test
  def test_to_hex
    assert_equal '#000000', to_hex(0, 0, 0)
    assert_equal '#ffffff', to_hex(255, 255, 255)
    assert_equal '#043c78', to_hex(4, 60, 120)
    assert_nil to_hex(-1, 0, 0)
    assert_nil to_hex(0, 0, 256)
  end

  def test_to_ints
    assert_equal [0, 0, 0], to_ints('#000000')
    assert_equal [255, 255, 255], to_ints('#fffffff')
    assert_equal [4, 60, 120], to_ints('#043c78')
    assert_nil to_ints('123456')
    assert_nil to_ints('#1234')
    assert_nil to_ints('#1234567')
    assert_nil to_ints('#00000g')
  end
end

