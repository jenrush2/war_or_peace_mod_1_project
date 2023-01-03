require './lib/card'
require './lib/deck'
require './lib/player'
require './lib/turn'

#Used pry testing instead of rspec

class CardGenerator
    attr_reader :filename

    def initialize(filename)
        @filename = filename
    end

    def create_cards
        card_deck = []
        File.foreach(filename) {|line|
            full_list_split = line.split(",").map(&:strip)
            values_for_one_card = []
            values_for_one_card << full_list_split.slice(0..2)
            values_for_one_card = values_for_one_card.flatten
            this_suit = values_for_one_card[0].to_sym
            this_value = values_for_one_card[1]
            this_rank = values_for_one_card[2].to_i
            
            
            new_card = Card.new(this_suit, this_value, this_rank)
            card_deck = Deck.new(new_card)
        }
        card_deck.cards
    end
                   
end



