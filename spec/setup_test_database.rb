require 'pg'


def setup_test_database
p "Setting up test database..."

connection = PG.connect(dbname: 'bookmark_manager_test', user: 'sergei')

# Clear the bookmarks tables

connection.exec("TRUNCATE bookmarks;")
end