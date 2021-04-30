RSpec.describe 'Card' do 
   it 'has a type' do
        card = Card.new('Ace of Spades')
        expect(card.type).to eq('Ace of Spades')

        expect(1 + 1).to(eq(2))
   end 
end