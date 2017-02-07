require 'csv'

class DateFinder
  attr_reader :data

  def initialize(filename)
    @data = CSV.read(filename)
  end

  def get_numbers
    data.flatten.select {|s| s.match(^([1][0-2]|[0]\d|\d)[\/-]([3][01]|[0-2]\d|\d)[\/-](\d{2}|\d{4})$)}
  end
end

class EmailFinder
  attr_reader :data

  def initialize(filename)
    @data = CSV.read(filename)
  end

  def get_numbers
    data.flatten.select {|s| s.match(^([\w\d_\-\.]+)@([\w\d_\-\.]+)\.([\w]{2,5})$)}
  end
end

class PhoneFinder
  attr_reader :data

  def initialize(filename)
    @data = CSV.read(filename)
  end

  def get_numbers
    data.flatten.select {|s| s.match((^(\(([\d]{3})\)\s?|[^0]\d{2}(-|\s|\.))\d{3}(-|\s|\.)\d{4}$)|(^[^0]\d{9}$))}
  end
end
