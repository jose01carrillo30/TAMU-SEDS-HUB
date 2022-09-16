# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'JK Rolling'
    fill_in 'Publication Date', with: '2009-08-07'
    fill_in 'Price', with: '90.00' # End with 00 to test if trailing zeros are truncated

    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter')
    expect(page).to have_content('JK Rolling')
    expect(page).to have_content('2009-08-07')
    expect(page).to have_content('$90.00')
  end
end

RSpec.describe 'Creating a book without title', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    # fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'JK Rolling'
    fill_in 'Publication Date', with: '2009-08-07'
    fill_in 'Price', with: '90.00' # End with 00 to test if trailing zeros are truncated

    click_on 'Create Book'
    # visit books_path
    expect(page).to have_content('error')
  end
end

RSpec.describe 'Creating a book without author', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    # fill_in 'Author', with: 'JK Rolling'
    fill_in 'Publication Date', with: '2009-08-07'
    fill_in 'Price', with: '90.00' # End with 00 to test if trailing zeros are truncated

    click_on 'Create Book'
    # visit books_path
    expect(page).to have_content('error')
  end
end

RSpec.describe 'Creating a book without date', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    # fill_in 'Author', with: 'JK Rolling'
    fill_in 'Publication Date', with: '2009-08-07'
    fill_in 'Price', with: '90.00' # End with 00 to test if trailing zeros are truncated

    click_on 'Create Book'
    # visit books_path
    expect(page).to have_content('error')
  end
end

RSpec.describe 'Creating a book without price', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'JK Rolling'
    fill_in 'Publication Date', with: '2009-08-07'
    # fill_in 'Price', with: '90.00' # End with 00 to test if trailing zeros are truncated

    click_on 'Create Book'
    # visit books_path
    expect(page).to have_content('error')
  end
end