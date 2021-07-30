RSpec.describe Array do
    it 'is a ruby array' do
        expect(subject.length).to eq(0)
        subject.push(1)
        expect(subject.length).to eq(1)
    end
end