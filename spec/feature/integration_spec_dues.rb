# location: spec/feature/integration_spec_dues.rb
require 'rails_helper'

RSpec.describe 'Creating a due payment', type: :feature do
  scenario 'valid inputs' do
    visit new_dues_path
    fill_in 'Purpose', with: 'testing due'
    fill_in 'Transaction date', with: DateTime.new(2001, 2, 3, 4, 5, 6)

    click_on 'Create Due'
    visit dues_path
    expect(page).to have_content('testing due')
  end

  scenario 'invalid transaction time, valid otherwise' do
    visit new_dues_path
    fill_in 'Purpose', with: 'testing due'
    fill_in 'Send time', with: nil

    click_on 'Create Due'
    visit dues_path
    expect(page).to have_content('prohibited this due from being saved')
  end

  scenario 'invalid purpose, valid otherwise' do
    visit new_dues_path
    fill_in 'Purpose', with: nil
    fill_in 'Transaction date', with: DateTime.new(2001, 2, 3, 4, 5, 6)

    click_on 'Create Due'
    visit dues_path
    expect(page).to have_content('prohibited this due from being saved')
  end
end