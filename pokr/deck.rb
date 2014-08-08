require "./card"

class Deck
  def initialize
    @suits = %w(S H D C)
    @values = %w(1 2 3 4 5 6 7 8 9 T J Q K A)
    @deck_of_cards = []
    make_deck
  end

  def make_deck
    @suits.each do |suit|
      @values.size.times do |i|
        @deck_of_cards << Card.new(@values[i], suit, i+1)
      end
    end
  end

  def deck_of_cards
    @deck_of_cards
  end

  def sample(num)
    @deck_of_cards.sample(num)
  end
end
