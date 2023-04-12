require './lib/card'
require './lib/deck'
require './lib/player'
require './lib/turn'
require './lib/card_generator'
require './lib/game'

new_card_deck = CardGenerator.new("deck_of_cards.txt").create_cards

new_card_deck = new_card_deck.shuffle()

half_deck1 = new_card_deck.shift(26)
half_deck2 = new_card_deck.shift(26)

player_1 = Player.new('Jen', half_deck1)
player_2 = Player.new('Dan', half_deck2)

new_game = Game.new(player_1, player_2)





