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
end 