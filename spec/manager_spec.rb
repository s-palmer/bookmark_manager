# frozen_string_literal: true

require 'manager'
require 'web_helpers_spec'

describe Manager do
  subject(:manager) { described_class.new }
  let(:bookmarks) { Manager.all }

  describe '#all' do
    it 'returns a list of bookmarks' do
      add_test_data
      expect(bookmarks).to include 'google.com'
      expect(bookmarks).to include 'twitter.com'
      expect(bookmarks).to include 'instagram.com'
    end
  end

  describe '#add_bookmark' do
    it 'adds a bookmark to the database' do
      Manager.add_bookmark('test.com')
      expect(bookmarks).to include 'test.com'
    end
  end
end
