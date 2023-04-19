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
        puts "Type GO to start the game!"
        usrin = gets.chomp
        if usrin == "GO"
            round = 1
            while round <= 100000
                puts "Round #{round}"
                round += 1
                turn = Turn.new(first_player, second_player)

                if turn.type == :game_over
                    break
                end

                if turn.type == :mutually_assured_destruction
                    turn.pile
                    puts "Mutually assured destriction! Both players lose three cards!"
                elsif turn.type == :war
                    winner = turn.winner
                    turn.pile
                    turn.award_spoils(winner)
                    puts "#{winner.name} wins six cards!"
                elsif turn.type == :basic
                    winner = turn.winner
                    turn.pile
                    turn.award_spoils(winner)
                    puts "#{winner.name} wins two cards!"
                end

                if first_player.has_lost? == true
                    puts "#{second_player.name} wins! Game over!"
                    break
                elsif second_player.has_lost? == true
                    puts "#{first_player.name} wins! Game over!"
                    break
                end
    
            end
        end

    end

end