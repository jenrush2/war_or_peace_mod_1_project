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
        values_for_one_card = []
        File.foreach(filename) {|line|
            full_list_split = line.split(",").map(&:strip)

                this_suit = full_list_split[0].to_sym
                this_value = full_list_split[1]
                this_rank = full_list_split[2].to_i
                new_card = Card.new(this_suit, this_value, this_rank)
            
                if card_deck == []
                    card_deck = Deck.new([new_card])
                    card_deck
                else 
                    card_deck.add_card(new_card)
                    card_deck
                end
        }
        return card_deck.cards
    end
                   
end



 