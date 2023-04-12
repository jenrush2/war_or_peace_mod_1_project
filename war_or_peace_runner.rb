require './lib/card'
require './lib/deck'
require './lib/player'
require './lib/turn'
require './lib/card_generator'
require './lib/game'
require 'pry'

new_card_deck = CardGenerator.new("deck_of_cards.txt").create_cards

new_card_deck.shuffleme


array_of_cards_full_deck = new_card_deck.cards


array_with_half_deck1 = array_of_cards_full_deck.shift(26)
array_with_half_deck2 = array_of_cards_full_deck.shift(26)


half_deck1 = Deck.new(array_with_half_deck1)
half_deck2 = Deck.new(array_with_half_deck2)

puts "Welcome to War! (or Peace)"
puts "This game will be played with 52 cards."
puts "Who is playing today?"
puts "Player 1: "
player_1_name = gets.chomp
puts "Player 2: "
player_2_name = gets.chomp

puts "The players today are #{player_1_name} and #{player_2_name}!"

player_1 = Player.new(player_1_name, half_deck1)
player_2 = Player.new(player_2_name, half_deck2)

new_game = Game.new(player_1, player_2)

new_game.start





