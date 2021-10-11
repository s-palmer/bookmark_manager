require 'pg'

con = PG.connect :dbname => 'bookmark_manager', :user => 'sergei'
con.exec( "SELECT * FROM bookmarks" ) do |result| 
  result.each do |row|
    puts "%s %s" % [ row['id'], row['url'] ]
  end
end


# |row|
#     puts [ row['id'], row['url'] ]