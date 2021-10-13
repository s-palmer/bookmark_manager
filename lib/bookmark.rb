# frozen_string_literal: true

require 'pg'

class Bookmark
  attr_reader :id, :url, :name

  def initialize(id:, name:, url:)
    @id = id
    @name = name
    @url = url
  end

  def self.all
    con = if ENV['ENVIRONMENT'] == 'test'
            PG.connect dbname: 'bookmark_manager_test', user: 'sergei'
          else
            PG.connect dbname: 'bookmark_manager', user: 'sergei'
          end
    result = con.exec('SELECT * FROM bookmarks')
    result.map do |bookmark|
      Bookmark.new(id: bookmark['id'], name: bookmark['name'], url: bookmark['url'])
    end
  end

  def self.add_bookmark(name:, url:)
    con = if ENV['ENVIRONMENT'] == 'test'
            PG.connect dbname: 'bookmark_manager_test', user: 'sergei'
          else
            PG.connect dbname: 'bookmark_manager', user: 'sergei'
          end
    result = con.exec("INSERT INTO bookmarks (name, url) VALUES ('#{name}', '#{url}') RETURNING id, name, url;")
    Bookmark.new(id: result[0]['id'], name: result[0]['name'], url: result[0]['url'])
  end
end
