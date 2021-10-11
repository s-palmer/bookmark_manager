require 'bookmark'

describe Bookmark do
  subject(:bookmark){ described_class.new(1,"facebook.com")}
  it 'has an id' do
    expect(subject.id).to eq 1
  end

  it 'has a URL' do
    expect(subject.url).to eq "facebook.com"
  end
end