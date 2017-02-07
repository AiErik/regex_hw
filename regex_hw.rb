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
