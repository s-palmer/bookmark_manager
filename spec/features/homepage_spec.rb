# frozen_string_literal: true

feature 'home page' do
  scenario 'displays a header message' do
    visit('/')
    expect(page).to have_content('Bookmark Manager App')
  end
end

feature 'add new bookmark' do
  scenario 'create a new bookmark in a form' do
    add_test_bookmark
    go_to_bookmarks
    expect(page).to have_content('Test')
  end
end
