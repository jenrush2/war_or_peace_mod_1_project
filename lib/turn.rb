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

    def pile
        if first_player.deck.rank_of_card_at(0) == second_player.deck.rank_of_card_at(0) and first_player.deck.rank_of_card_at(2) == second_player.deck.rank_of_card_at(2)
            3.times{first_player.deck.remove_card}
            3.times{second_player.deck.remove_card}

        elsif first_player.deck.rank_of_card_at(0) == second_player.deck.rank_of_card_at(0)
            spoils_of_war << first_player.deck.cards[0]
            spoils_of_war << first_player.deck.cards[1]
            spoils_of_war << first_player.deck.cards[2]
            
            spoils_of_war << second_player.deck.cards[0]
            spoils_of_war << second_player.deck.cards[1]
            spoils_of_war << second_player.deck.cards[2]

            3.times{first_player.deck.remove_card}
            3.times{second_player.deck.remove_card}

        else 
            spoils_of_war << first_player.deck.cards[0]
            spoils_of_war << second_player.deck.cards[0]
        end

        def award_spoils(winning_player)
            winning_player.deck.cards.concat spoils_of_war
        end

    end

end 