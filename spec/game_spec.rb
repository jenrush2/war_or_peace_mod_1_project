require 'rspec'
require './lib/game'

RSpec.describe Player do
    it 'has 2 players' do
        new_card_deck = CardGenerator.new("deck_of_cards.txt").create_cards

        new_card_deck = new_card_deck.shuffle()

        half_deck1 = new_card_deck.shift(26)
        half_deck2 = new_card_deck.shift(26)

        player_1 = Player.new('Jen', half_deck1)
        player_2 = Player.new('Dan', half_deck2)
        
        new_game = Game.new(player_1, player_2)

        expect(new_game.first_player).to eq(player_1)
        expect(new_game.second_player).to eq(player_2)
    end

    it 'has an introduction to start the game' do
        new_card_deck = CardGenerator.new("deck_of_cards.txt").create_cards

        new_card_deck = new_card_deck.shuffle()

        half_deck1 = new_card_deck.shift(26)
        half_deck2 = new_card_deck.shift(26)

        player_1 = Player.new('Jen', half_deck1)
        player_2 = Player.new('Dan', half_deck2)
        
        new_game = Game.new(player_1, player_2)

        expect(new_game.start) WHAT GOES HERE
    end

end
