require 'manager'
require 'web_helpers_spec.rb'

describe Manager do
  subject(:manager) { described_class.new }

  describe '#all' do
    it 'returns a list of bookmarks' do
      # con = PG.connect(dbname: 'bookmark_manager_test')
      # con.exec("INSERT INTO bookmarks (url) VALUES ('google.com');")
      # con.exec("INSERT INTO bookmarks (url) VALUES('twitter.com');")
      # con.exec("INSERT INTO bookmarks (url) VALUES('instagram.com');")
      add_test_data
      
      bookmarks = Manager.all

      expect(bookmarks).to include "google.com"
      expect(bookmarks).to include "twitter.com"
      expect(bookmarks).to include "instagram.com"
    end
  end

end