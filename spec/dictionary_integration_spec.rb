require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exception, false)


describe('The add to dictionary path', {:type => :feature}) do
  it('links to page to add word') do
    visit('/')
    click_link('Add a word to dictionary.')
    expect(page).to have_content('What word would you like to add?')
  end

  it('allows user to input word to dictionary') do
    visit('/add_word')
    fill_in('word', with: 'words')
    click_button('Add')
    expect(page).to have_content('Here is your custom dictionary!')
  end
end
