require 'minitest/autorun'
require 'minitest/pride'
require './regex_hw.rb'

class ValidatorTest < Minitest::Test
  def test_initialize
    assert Validator.new('simple.csv')
  end

  def test_true_false_array
    validator = Validator.new('simple.csv')
    assert_equal [true, false], validator.true_false_array("joined", /^([1][0-2]|[0]\d|\d)[\/-]([3][01]|[0-2]\d|\d)[\/-](\d{2}|\d{4})$/)
    assert_equal [true, false], validator.true_false_array("email", /^([\w\d_\-\.]+)@([\w\d_\-\.]+)\.([\w]{2,5})$/)
    assert_equal [true, true], validator.true_false_array("phone", /(^(\(([\d]{3})\)\s?|[^0]\d{2}(-|\s|\.))\d{3}(-|\s|\.)\d{4}$)|(^[^0]\d{9}$)/)
  end

  def test_validation_array
    validator = Validator.new('simple.csv')
    assert_equal [[true, true, true], [false, false, true]], validator.validation_array
  end
end
