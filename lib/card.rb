#create a card class that represents a traditional deck of cards


class Card
    attr_reader :suit, :value, :rank

    def initialize(suit, value, rank)
        @suit = suit
        @value = value
        @rank = rank
    end
end


