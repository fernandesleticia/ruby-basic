class Card
    attr_accessor :rank, :suit

    def initialize(rank, suit)
        @rank = rank
        @suit = suit
    end
end

RSpec.describe Card do #create a example group(a set of related tests)
    let(:card) { Card.new('Ace', 'Spades') } #cash and lazy loading

    it 'has a rank' do #define features
        expect(card.rank).to eq('Ace')
        card.rank = 'Queen'
        expect(card.rank).to eq('Queen')
    end 

    it 'has a suit' do 
        expect(card.suit).to eq('Spades')
    end

    it 'has a custom error message' do 
        comparisom = 'Spade'
        expect(card.suit).to eq(comparisom), "Hey, I expected #{comparisom}!"
    end
end

