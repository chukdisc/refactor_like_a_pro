class Card
  def initialize(value, suit, rank)
    @array = ["#{value}#{suit}", rank]
  end

  def to_s
    @array.to_s
  end
end
