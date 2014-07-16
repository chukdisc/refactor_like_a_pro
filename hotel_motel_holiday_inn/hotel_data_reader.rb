require 'csv'

class HotelDataReader
  def initialize(filename)
    @filename = filename
    @hotels = []
  end

  attr_reader: @hotels

  def read_hotel_data
    hotels = CSV.foreach(@hotel_data_file, headers: true) do |row|
      @hotels << Hotel.new(row)
    end
  end
end

