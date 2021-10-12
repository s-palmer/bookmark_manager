require_relative '../web_helpers_spec.rb'


feature 'Bookmarks Page' do
  scenario 'user should see a list of bookmarks' do
    add_test_data
    go_to_bookmarks
    expect(page).to have_content("google.com")
    expect(page).to have_content("instagram.com")
    expect(page).to have_content("twitter.com")
  end 
end