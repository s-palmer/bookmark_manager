require_relative '../web_helpers_spec.rb'


feature 'Bookmarks Page' do
  scenario 'user should see a list of bookmarks' do
    # con = PG.connect(dbname: 'bookmark_manager_test')
    # con.exec("INSERT INTO bookmarks (url) VALUES ('google.com');")
    # con.exec("INSERT INTO bookmarks (url) VALUES('twitter.com');")
    # con.exec("INSERT INTO bookmarks (url) VALUES('instagram.com');") 

    add_test_data

    visit ('/')
    click_button ("View All Bookmarks")
    expect(page).to have_content("google.com")
    expect(page).to have_content("instagram.com")
    expect(page).to have_content("twitter.com")
  end 
end