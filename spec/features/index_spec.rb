feature 'index page' do
  scenario 'displays a welcome message' do
    visit ('/')
    expect(page).to have_content ("hello world")
  end
end
