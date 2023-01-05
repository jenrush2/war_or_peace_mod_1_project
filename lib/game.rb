require './lib/card'
require './lib/deck'
require './lib/player'
require './lib/turn'
require './lib/card_generator'

class Game
    attr_reader :first_player,
                :second_player

    def initialize(first_player, second_player)
        @first_player = first_player
        @second_player = second_player
    end
end