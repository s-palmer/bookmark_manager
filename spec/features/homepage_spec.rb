feature 'home page' do
  scenario 'displays a header message' do
    visit ('/')
    expect(page).to have_content ("Bookmark Manager App")
  end
end


# Write a feature test for a user submitting a new bookmark via a form. Think carefully about how to set up the Sinatra routes for this!

feature 'add new bookmark' do
  scenario 'create a new bookmark in a form' do
    visit ('/')
    fill_in('bookmark_name', with: 'Test')
    fill_in('bookmark_url', with: 'test.com')
    click_button('Save')
    click_button('View All Bookmarks')
    expect(page).to have_content('test.com')
  end
end