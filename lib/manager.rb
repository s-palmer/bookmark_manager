# frozen_string_literal: true

require 'pg'

class Manager
  def self.all
    con = if ENV['ENVIRONMENT'] == 'test'
            PG.connect dbname: 'bookmark_manager_test', user: 'sergei'
          else
            PG.connect dbname: 'bookmark_manager', user: 'sergei'
          end
    result = con.exec('SELECT * FROM bookmarks')
    result.map { |bookmark| bookmark['url'] }
  end

  def self.add_bookmark(bookmark_url)
    con = if ENV['ENVIRONMENT'] == 'test'
            PG.connect dbname: 'bookmark_manager_test', user: 'sergei'
          else
            PG.connect dbname: 'bookmark_manager', user: 'sergei'
          end
    con.exec("INSERT INTO bookmarks (url) VALUES ('#{bookmark_url}');")
  end
end
