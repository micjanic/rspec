RSpec.shared_examples 'a Ruby object with length property that returns 3' do
  it 'returns the number of items' do
    expect(subject.length).to eq(3) # subject is lazily loaded, so doesn't matter that it isn't defined yet, when injected into a subject block it will get the current subject
  end
end

RSpec.describe Array do
  subject { [1, 2, 3] }
  include_examples 'a Ruby object with length property that returns 3'
end

RSpec.describe String do
  subject { 'abc' }
end

RSpec.describe Hash do
  subject { { a: 1, b: 2, c: 3 } }
  include_examples 'a Ruby object with length property that returns 3'
end

class SausageLink
  def length
    3
  end
end

RSpec.describe SausageLink do
  subject { described_class.new }
  include_examples 'a Ruby object with length property that returns 3'
end
