require 'manager'

describe Manager do
  subject(:manager) { described_class.new }

  describe '#all' do
    it 'returns a list of bookmarks' do
      bookmarks = Manager.all
  
      expect(bookmarks).to include "google.com"
      expect(bookmarks).to include "twitter.com"
      expect(bookmarks).to include "instagram.com"
    end
  end

end