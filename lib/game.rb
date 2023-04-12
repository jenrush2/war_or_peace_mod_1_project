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
        puts "The players today are #{first_player.name} and #{second_player.name}!"
        puts "Type GO to start the game!"
        usrin = gets.chomp
        if usrin == "GO"
            round = 1
            while round <= 10
                puts "Round #{round}"
                round += 1
                turn = Turn.new(first_player, second_player)
                binding.pry
                turn.type
                winning_player = turn.winner
                turn.pile
                puts "#{winning_player} wins round #{round}!"
                turn.award_spoils(winning_player)
            end
        end

    end

end