def add_test_data
  con = PG.connect(dbname: 'bookmark_manager_test')
  con.exec("INSERT INTO bookmarks (url) VALUES ('google.com');")
  con.exec("INSERT INTO bookmarks (url) VALUES('twitter.com');")
  con.exec("INSERT INTO bookmarks (url) VALUES('instagram.com');") 
end

def go_to_bookmarks
  visit ('/')
  click_button ("View All Bookmarks")
end