# frozen_string_literal: true

require 'bookmark'
require 'web_helpers_spec'

describe Bookmark do
  let(:bookmarks) { Bookmark.all }

  describe '#all' do
    it 'returns a list of bookmarks' do
      bookmark = Bookmark.add_bookmark(name: 'Google', url: 'google.com')
      Bookmark.add_bookmark(name: 'Instagram', url: 'instagram.com')
      Bookmark.add_bookmark(name: 'Twitter', url: 'twitter.com')

      expect(bookmarks.length).to be 3
      expect(bookmarks.first).to be_a Bookmark
      expect(bookmarks.first.id).to eq bookmark.id
      expect(bookmarks.first.name).to eq 'Google'
      expect(bookmarks.first.url).to eq 'google.com'
    end
  end

  describe '#add_bookmark' do
    it 'adds a bookmark to the database' do
      test_bookmark = Bookmark.add_bookmark(name: 'Test', url: 'test.com')
      persisted_data = PG.connect(
        dbname: 'bookmark_manager_test',
        user: 'sergei'
      ).query("SELECT * FROM bookmarks where id = #{test_bookmark.id};")

      expect(test_bookmark).to be_a Bookmark
      expect(test_bookmark.id).to eq persisted_data.first['id']
      expect(test_bookmark.name).to eq 'Test'
      expect(test_bookmark.url).to eq 'test.com'
    end
  end
end
