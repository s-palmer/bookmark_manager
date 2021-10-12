feature 'Bookmarks Page' do
  scenario 'user should see a list of bookmarks' do
    visit ('/')
    click_button ("View All Bookmarks")
    expect(page).to have_content("google.com")
    expect(page).to have_content("instagram.com")
    expect(page).to have_content("twitter.com")
  end
end