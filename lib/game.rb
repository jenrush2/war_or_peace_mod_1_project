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

    def start
        puts "Welcome to War! (or Peace)"
        puts "This game will be played with 52 cards."
        puts "The players today are #{first_player} and #{second_player}!"
        puts "Type GO to start the game!"
    end

end