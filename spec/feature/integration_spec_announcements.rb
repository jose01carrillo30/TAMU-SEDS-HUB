# location: spec/feature/integration_spec_announcements.rb
require 'rails_helper'

RSpec.describe 'Creating an announcement', type: :feature do
  scenario 'valid inputs' do
    visit new_announcement_path
    fill_in 'Send time', with: DateTime.new(2001, 2, 3, 4, 5, 6)
    fill_in 'Title', with: 'NASA-lam Poetry'
    fill_in 'Category', with: 'General'
    fill_in 'Contents', with: 'words words words...'

    click_on 'Create Announcement'
    visit announcements_path
    expect(page).to have_content('NASA-lam Poetry')
    expect(page).to have_content('General')
    expect(page).to have_content('words words words...')
  end

  scenario 'invalid send time, valid otherwise' do
    visit new_announcement_path
    fill_in 'Send time', with: nil
    fill_in 'Title', with: 'Title'
    fill_in 'Category', with: 'General'
    fill_in 'Contents', with: 'words words words...'

    click_on 'Create Announcement'
    visit announcements_path
    expect(page).to have_content('prohibited this announcement from being saved')
  end

  scenario 'invalid title, valid otherwise' do
    visit new_announcement_path
    fill_in 'Send time', with: DateTime.new(2001, 2, 3, 4, 5, 6)
    fill_in 'Title', with: nil
    fill_in 'Category', with: 'General'
    fill_in 'Contents', with: 'words words words...'

    click_on 'Create Announcement'
    visit announcements_path
    expect(page).to have_content('prohibited this announcement from being saved')
  end
  
  scenario 'invalid category, valid otherwise' do
    visit new_announcement_path
    fill_in 'Send time', with: DateTime.new(2001, 2, 3, 4, 5, 6)
    fill_in 'Title', with: 'NASA-lam Poetry'
    fill_in 'Category', with: nil
    fill_in 'Contents', with: 'words words words...'

    click_on 'Create Announcement'
    visit announcements_path
    expect(page).to have_content('prohibited this announcement from being saved')
  end

  scenario 'invalid contents, valid otherwise' do
    visit new_announcement_path
    fill_in 'Send time', with: DateTime.new(2001, 2, 3, 4, 5, 6)
    fill_in 'Title', with: 'NASA-lam Poetry'
    fill_in 'Category', with: 'General'
    fill_in 'Contents', with: nil

    click_on 'Create Announcement'
    visit announcements_path
    expect(page).to have_content('prohibited this announcement from being saved')
  end

end
