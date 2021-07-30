RSpec.describe Hash do # passing in the class directly will allow it to start fresh for each test it block.
  # let(:my_hash) { {} }

  # let(:subject) { {} }

  it 'should start off empty' do
    puts subject
    expect(subject.length).to eq(0)
    subject[:some_key] = 'Some Value'
    expect(subject.length).to eq(1)
  end

  it 'is isolated between examples' do
    expect(subject.length).to eq(0)
  end
end
