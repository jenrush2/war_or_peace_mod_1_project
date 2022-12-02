#create a Deck class

#initialize: this method will take one argument - an array of cards.
#cards: an attr_reader to read the @cards attribute
#rank_of_card_at: this method will take one argument that represents 
#the index location of a card to be used (typically 0 or 2 more on this later 😉 )
# and will return the rank of that card.
#high_ranking_cards: this method will return an array of cards in the deck 
#that have a rank of 11 or above (face cards and aces)
#percent_high_ranking: this method will return the percentage of cards that
# are high ranking
#remove_card: this method will remove the top card from the deck
#add_card: this method will add one card to the bottom (end) of the deck

require './card'

class Deck
    attr_reader :cards

    def initialize(cards)
        @cards = cards
    end

    def cards
        @cards
    end

    def rank_of_card_at(index)
        one_card = cards[index]
        one_card.rank
    end

    def high_ranking_cards
        high_ranking_array = []
        cards.each do |card|
            if card.rank >= 11
                high_ranking_array.append(card)
            end
        end
        return high_ranking_array
    end


end

card1 = Card.new(:diamond, 'Queen', 12)
card2 = Card.new(:spade, '3', 3)
card3 = Card.new(:heart, 'Ace', 14)

#puts card2.rank

cards = [card1, card2, card3]

#p cards

deck = Deck.new(cards)

#p deck.cards

#p deck.rank_of_card_at(0)

#p deck.rank_of_card_at(2)

p deck.high_ranking_cards
