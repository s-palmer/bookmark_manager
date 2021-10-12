require 'pg'

class Manager

  def self.all
    if ENV['ENVIRONMENT'] == 'test'
      con = PG.connect :dbname => 'bookmark_manager_test', :user => 'sergei'
    else
      con = PG.connect :dbname => 'bookmark_manager', :user => 'sergei'
    end
    result = con.exec( "SELECT * FROM bookmarks" )
    result.map { |bookmark| bookmark['url'] }
  end

  def self.add_bookmark(bookmark_url)
    if ENV['ENVIRONMENT'] == 'test'
      con = PG.connect :dbname => 'bookmark_manager_test', :user => 'sergei'
    else
      con = PG.connect :dbname => 'bookmark_manager', :user => 'sergei'
    end
    con.exec("INSERT INTO bookmarks (url) VALUES ('#{bookmark_url}');")
  end
end