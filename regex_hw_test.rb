require 'minitest/autorun'
require 'minitest/pride'
require './regex_hw.rb'

class DateFinderTest < Minitest::Test
  def test_initialize
    assert DateFinder.new('homework.csv')
  end

  def test_simple
    finder = DateFinder.new('homework.csv')
    assert_equal ['919-302-5139', '919-555-1111'], finder.get_numbers
  end
end

class EmailFinderTest < Minitest::Test
  def test_initialize
    assert EmailFinder.new('homework.csv')
  end

  def test_simple
    finder = EmailFinder.new('homework.csv')
    assert_equal ['919-302-5139', '919-555-1111'], finder.get_numbers
  end
end

class PhoneFinderTest < Minitest::Test
  def test_initialize
    assert PhoneFinder.new('homework.csv')
  end

  def test_simple
    finder = PhoneFinder.new('homework.csv')
    assert_equal ['919-302-5139', '919-555-1111'], finder.get_numbers
  end
end
