require './lib/card'

#Used pry testing instead of rspec

class Deck
    attr_reader :cards

    def initialize(cards)
        @cards = cards
    end

    def rank_of_card_at(index)
        one_card = cards[index]
        one_card.rank
    end

    def high_ranking_cards
        high_ranking_array = []
        cards.each do |card|
            if card.rank >= 11
                high_ranking_array.append(card)
            end
        end
        return high_ranking_array
    end

    def percent_high_ranking
        high_ranking_array = []
        cards.each do |card|
            if card.rank >= 11
                high_ranking_array.append(card)
            end
        end
        percent = (high_ranking_array.length.to_f/cards.length) * 100
        return percent
    end

    def remove_card
        cards.delete_at(0)
        return cards
    end

    def add_card(new)
        cards.push(new)
        return cards
    end

    def shuffle
        return cards.shuffle
    end

end