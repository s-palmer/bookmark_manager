# frozen_string_literal: true

require_relative '../web_helpers_spec'

feature 'Bookmarks Page' do
  scenario 'user should see a list of bookmarks' do
    add_test_data
    go_to_bookmarks
    expect(page).to have_content('Google')
    expect(page).to have_content('Instagram')
    expect(page).to have_content('Twitter')
  end
end
