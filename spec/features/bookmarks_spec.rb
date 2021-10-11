feature 'Bookmarks Page' do
  scenario 'user should see a list of bookmarks' do
    visit ('/')
    click_button ("View All Bookmarks")
    expect(page).to have_content("This is a test bookmark")
  end
end