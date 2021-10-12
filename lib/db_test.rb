# frozen_string_literal: true

require 'pg'

con = PG.connect dbname: 'bookmark_manager_test', user: 'sergei'
con.exec('SELECT * FROM bookmarks') do |result|
  result.each do |row|
    puts format('%s %s', row['id'], row['url'])
  end
end

# |row|
#     puts [ row['id'], row['url'] ]
