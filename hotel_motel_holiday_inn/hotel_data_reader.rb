require 'csv'
require "./hotel"

class HotelDataReader
  def initialize(filename)
    @filename = filename
    @hotels = []
  end

  attr_reader :hotels

  def read_hotel_data
    CSV.foreach(@filename, headers: true) do |row|
      @hotels << Hotel.new(row)
    end
  end
end
