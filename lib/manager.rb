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

  def add_bookmark(bookmark)
    @bookmarks << bookmark
  end
end