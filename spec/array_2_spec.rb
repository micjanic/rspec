RSpec.describe Array do
  subject(:sally) do
    [1, 2]
  end
  it 'subject has 2 elements' do
    expect(sally.length).to eq(2)
    sally.pop
    expect(sally.length).to eq(1)
  end

  it 'subject still has 2 elements' do
    expect(sally.length).to eq(2)
  end
end
