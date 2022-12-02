require './card'
require './deck'

class Player
    attr_reader :name, :deck

    def initialize (name, deck)
        @name = name
        @deck = deck
    end

    def name
        @name
    end

    def deck
        @deck
    end

    #def has_lost?
       # if deck.length <= 0
            #return true
        #else
           # return false
        #end
   # end

end


card1 = Card.new(:diamond, 'Queen', 12)
card2 = Card.new(:spade, '3', 3)
card3 = Card.new(:heart, 'Ace', 14)

cards = [card1, card2, card3]

deck = Deck.new(cards)

player = Player.new('Clarisa', deck)

p player.name
p player.deck
#p player.has_lost?