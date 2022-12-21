require './lib/card'
require './lib/deck'
require './lib/player'

class Turn
    attr_accessor :first_player,
                  :second_player,
                  :spoils_of_war

    def initialize (first_player, second_player)
        @first_player = first_player
        @second_player = second_player
        @spoils_of_war = []
    end

    def type
        if first_player.deck.rank_of_card_at(0) == second_player.deck.rank_of_card_at(0) and first_player.deck.rank_of_card_at(2) == second_player.deck.rank_of_card_at(2)
            :mutually_assured_destruction
        elsif first_player.deck.rank_of_card_at(0) == second_player.deck.rank_of_card_at(0)
            :war
        else
            :basic
        end
    end

    def winner
        if first_player.deck.rank_of_card_at(0) == second_player.deck.rank_of_card_at(0) and first_player.deck.rank_of_card_at(2) == second_player.deck.rank_of_card_at(2)
            "No Winner"
        elsif first_player.deck.rank_of_card_at(0) == second_player.deck.rank_of_card_at(0)
            if first_player.deck.rank_of_card_at(2) > second_player.deck.rank_of_card_at(2)
                first_player
            elsif first_player.deck.rank_of_card_at(2) < second_player.deck.rank_of_card_at(2)
                second_player
            end
        else 
            if first_player.deck.rank_of_card_at(0) > second_player.deck.rank_of_card_at(0)
                first_player
            else
                second_player
            end
        end
    end
end 