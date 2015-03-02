# encoding: utf-8
require 'test/unit'
require 'test/unit/rr'
require 'hatena_xml_rpc'

class TestHatenaXMLRPC < Test::Unit::TestCase
  def setup
    @INSTANCE = JapaneseAssociatedKeywords::HatenaXMLRPC.new
  end

  def test_get
    words = nil
    result = @INSTANCE.get(words)
    assert(result.instance_of?(Array), "Should be Array")
    assert_equal(0, result.size, "Should have got correctoly")

    words = ""
    result = @INSTANCE.get(words)
    assert(result.instance_of?(Array), "Should be Array")
    assert_not_equal(0, result.size, "Should have got correctoly")

    words = "はてな"
    result = @INSTANCE.get(words)
    assert(result.instance_of?(Array), "Should be Array")
    assert_not_equal(0, result.size, "Should have got correctoly")

    words = ["はてな"]
    result = @INSTANCE.get(words)
    assert(result.instance_of?(Array), "Should be Array")
    assert_not_equal(0, result.size, "Should have got correctoly")

    words = ["はてな", "キーワード"]
    result = @INSTANCE.get(words)
    assert(result.instance_of?(Array), "Should be Array")
    assert_not_equal(0, result.size, "Should have got correctoly")
  end

  def teardown
    @INSTANCE = nil
  end
end
