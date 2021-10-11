class Manager

  attr_reader :bookmarks
  def initialize
    @bookmarks = []
  end

  def all
    @bookmarks
  end

  def add_bookmark(bookmark)
    @bookmarks << bookmark
  end
end