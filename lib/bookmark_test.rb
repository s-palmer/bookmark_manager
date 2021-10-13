# frozen_string_literal: true

# class Bookmark
#   attr_reader :id, :url

#   def initialize(id, name, url)
#     @id = id
#     @name = name
#     @url = url
#   end

#   def self.create(url:, title:)
#     connection = if ENV['ENVIRONMENT'] == 'test'
#                    PG.connect(dbname: 'bookmark_manager_test')
#                  else
#                    PG.connect(dbname: 'bookmark_manager')
#                  end

#     connection.exec("INSERT INTO bookmarks (title, url) VALUES('#{title}', '#{url}') RETURNING id, url, title")
#   end
# end
