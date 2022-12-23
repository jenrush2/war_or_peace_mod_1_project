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
        File.foreach(filename) {|line|
        new_card = Card.new(line)
        card_deck << Deck.new(new_card)
        card_deck.cards
        }
    end
                   
end



