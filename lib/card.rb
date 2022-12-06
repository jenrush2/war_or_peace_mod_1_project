#create a card class that represents a traditional deck of cards


class Card
    attr_reader :suit, :value, :rank

    def initialize(suit, value, rank)
        @suit = suit
        @value = value
        @rank = rank
    end

    def suit
        @suit
    end

    def value
        @value
    end

    def rank 
        @rank
    end
end



#card_1 = Card.new(:heart, 'Jack', 11)

#puts card_1.suit
#puts card_1.value
#puts card_1.rank