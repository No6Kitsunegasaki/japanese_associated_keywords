# encoding: utf-8
require 'test/unit'
require 'test/unit/rr'
require 'japanese_associated_keywords'

class TestMock
  def initialize(site)
    @site = site
  end

  def get(words)
    'OK : ' + @site
  end
end

class TestJapaneseAssociatedKeywords < Test::Unit::TestCase
  def setup
    JapaneseAssociatedKeywords.const_set(:DEFAULT_SITE, 'test1')
    JapaneseAssociatedKeywords.const_set(:SITES, {
      'test1' => TestMock.new('test1'),
      'test2' => TestMock.new('test2'),
    })
    @MODULE = JapaneseAssociatedKeywords
  end

  def test_get
    words = nil
    expected = 'OK : test1'
    result = @MODULE.get(words)
    assert(result.instance_of?(String), "Should be String")
    assert_equal(expected, result, "Should have got correctoly")

    words = "word"
    expected = 'OK : test1'
    result = @MODULE.get(words)
    assert(result.instance_of?(String), "Should be String")
    assert_equal(expected, result, "Should have got correctoly")
 
    words = "word"
    site = "test1"
    expected = 'OK : test1'
    result = @MODULE.get(words, site)
    assert(result.instance_of?(String), "Should be String")
    assert_equal(expected, result, "Should have got correctoly")
 
    words = "word"
    site = "test2"
    expected = 'OK : test2'
    result = @MODULE.get(words, site)
    assert(result.instance_of?(String), "Should be String")
    assert_equal(expected, result, "Should have got correctoly")
  end

  def teardown
    @MODULE = nil
  end
end
