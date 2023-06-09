require 'minitest/autorun'
require_relative '../lib/rgb.rb'

class RgbTest < Minitest::Test
  def test_to_hex
    assert_equal '#000000', to_hex(0,0,0)
    assert_equal '#ffffff', to_hex(255,255,255)
    assert_equal '#ea7827', to_hex(234,120,39)
  end

  def test_to_ints
    assert_equal [0, 0, 0], to_ints('#000000')
    assert_equal [255,255,255], to_ints('#ffffff')
    assert_equal [175,63,44], to_ints('#af3f2c')
  end
end
