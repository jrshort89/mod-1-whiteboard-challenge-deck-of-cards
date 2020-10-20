require 'pry'
class Deck

    attr_accessor :cards

    def initialize
        @cards = []

        ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"].each do |rank|
            ["Hearts", "Clubs", "Diamonds", "Spades"].each do |suit|
                self.cards << Card.new(suit, rank)
            end
        end
    end

    def self.arr
        @cards
    end

    def choose_card
        self.cards.delete_at(rand(1..52))
    end

end

class Card

    @@all = []

    attr_reader :rank, :suit

    def initialize(suit, rank)
        @rank = rank
        @suit = suit
        @@all << self
    end

    def self.all 
        @@all
    end

end

# queen = Card.new("Q", "Hearts")

# binding.pry

