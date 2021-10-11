require 'pg'

class Manager

  def initialize
  end

  def self.all
    con = PG.connect :dbname => 'bookmark_manager', :user => 'sergei'
    result = con.exec( "SELECT * FROM bookmarks" )
    result.map { |bookmark| bookmark['url'] }
  end

  def add_bookmark(bookmark)
    @bookmarks << bookmark
  end
end