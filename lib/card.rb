#create a card class that represents a traditional deck of cards

#how I would do it...
#have a round counter
#have a card in hand counter for player 1 and player 2 (game ends when either card in hand counter == 0)
#Inside each round there is random_card_player_1 and random_card_player_2
#Have an array for suits, a dictionary for value/rank pairs. Learn how to pull a random value from an array and assign result to a variable.
#Also pull a random pair from dictionary and assign to a variable.
#Use those variables as arguments for random_card = Card.new()
#player wins if their random card is larger

#So far haven't accounted for drawing the same cards repeated...

class Card
    attr_reader :suit, :value, :rank

    def initialize(suit, value, rank)
        @suit = suit
        @value = value
        @rank = rank
    end

    def suit
        @suit
    end

    def value
        @value
    end

    def rank 
        @rank
    end
end



#card_1 = Card.new(:heart, 'Jack', 11)

#puts card_1.suit
#puts card_1.value
#puts card_1.rank