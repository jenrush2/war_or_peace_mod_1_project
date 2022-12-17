require 'rspec'
require './lib/player'

RSpec.describe Player do
    it 'exists' do
        card1 = Card.new(:diamond, 'Queen', 12)
        card2 = Card.new(:spade, '3', 3)
        card3 = Card.new(:heart, 'Ace', 14)

        cards = [card1, card2, card3]

        deck = Deck.new(cards)

        player = Player.new('Clarisa', deck)

        expect(player).to be_an_instance_of(Player)
    end

    it 'has a name' do
        card1 = Card.new(:diamond, 'Queen', 12)
        card2 = Card.new(:spade, '3', 3)
        card3 = Card.new(:heart, 'Ace', 14)

        cards = [card1, card2, card3]

        deck = Deck.new(cards)

        player = Player.new('Clarisa', deck)

        expect(player.name).to eq('Clarisa')
    end

    it 'has a deck' do
        card1 = Card.new(:diamond, 'Queen', 12)
        card2 = Card.new(:spade, '3', 3)
        card3 = Card.new(:heart, 'Ace', 14)

        cards = [card1, card2, card3]

        deck = Deck.new(cards)

        player = Player.new('Clarisa', deck)

        expect(player.deck).to eq(deck)
    end

    it 'has a deck so lost is false' do
        card1 = Card.new(:diamond, 'Queen', 12)
        card2 = Card.new(:spade, '3', 3)
        card3 = Card.new(:heart, 'Ace', 14)

        cards = [card1, card2, card3]

        deck = Deck.new(cards)

        player = Player.new('Clarisa', deck)

        expect(player.has_lost?).to eq(false)
    end

    it 'can remove a card' do
        card1 = Card.new(:diamond, 'Queen', 12)
        card2 = Card.new(:spade, '3', 3)
        card3 = Card.new(:heart, 'Ace', 14)

        cards = [card1, card2, card3]

        deck = Deck.new(cards)

        player = Player.new('Clarisa', deck)

        expect(player.deck.remove_card).to eq([card2, card3])
    end

    it 'remove all cards' do
        card1 = Card.new(:diamond, 'Queen', 12)
        card2 = Card.new(:spade, '3', 3)
        card3 = Card.new(:heart, 'Ace', 14)

        cards = [card1, card2, card3]

        deck = Deck.new(cards)

        player = Player.new('Clarisa', deck)

        expect(player.deck.remove_card).to eq([card2, card3])
        expect(player.deck.remove_card).to eq([card3])
        expect(player.deck.remove_card).to eq([])
    end

    it 'lost is true, no more cards' do
        card1 = Card.new(:diamond, 'Queen', 12)
        card2 = Card.new(:spade, '3', 3)
        card3 = Card.new(:heart, 'Ace', 14)

        cards = [card1, card2, card3]

        deck = Deck.new(cards)

        player = Player.new('Dan', deck)

        expect(player.deck.remove_card).to eq([card2, card3])
        expect(player.deck.remove_card).to eq([card3])
        expect(player.deck.remove_card).to eq([])

        expect(player.has_lost?).to eq(true)
    end

end 