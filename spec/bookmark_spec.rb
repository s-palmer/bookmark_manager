require 'bookmark'

describe Bookmark do
  subject(:bookmark){ described_class.new("Facebook","facebook.com")}
  it 'has a name' do
    expect(subject.name).to eq "Facebook"
  end

  it 'has a URL' do
    expect(subject.url).to eq "facebook.com"
  end
end