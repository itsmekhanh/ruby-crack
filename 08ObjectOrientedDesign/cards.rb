# Implement a class for a deck of cards

class Card
    SPADES = "S"
    CLUBS = "C"
    DIAMONDS = "D"
    HEARTS = "H"

    attr_accessor :suit, :value

    def initialize(suit, value)
        @suit = suit
        @value = value
    end
end

class Deck

    def initialize
        @cards = []

        for suit in 1..4
            for value in 1..13
                @cards << Card.new(suit, value)
            end
        end
    end
    
    def shuffle
        if !@cards.empty?
            @cards = @cards.shuffle
        end
    end

    def print_cards
        @cards.each do | card |
            print "[#{card.suit}-#{card.value}]"
        end
    end

    def deal_card
        
    end
end

class Player

    attr_accessor :name, :money

    def initialize(name, money)
        @name = name
        @money = money
    end
end

class BlackJack
    
    MAX = 5

    def initialize
        @deck = Deck.new
        @players = Array.new(MAX)
        @count = 0
    end

    def add_player(name, money)
        if @count < MAX
        
        else
            puts "All seats are filled!"
        end
    end

    def remove_player(name)
        for i in 0..MAX-1
            if @players[i].name == name
                @players[i] = nil
                return true
            end
        end
        return false
    end

    def deal
        @deck.shuffle
        // deal cards

    end
end

puts "Testing BlackJack deck"
deck = BlackJack.new
