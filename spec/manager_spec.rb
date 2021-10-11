require 'manager'

describe Manager do
  subject(:manager) { described_class.new }

  it 'should be an array' do
    expect(subject.bookmarks).to be_an_instance_of(Array)
  end

  describe '#add_bookmark' do
    it 'should add a bookmark to the manager array' do
      subject.add_bookmark("Test")
      expect(subject.bookmarks.length).to eq 1 
    end
  end

  describe '#all' do
    it 'should return a list of bookmarks' do
      subject.add_bookmark("Test")
      expect(subject.all).to eq ["Test"] 
    end
  end

end