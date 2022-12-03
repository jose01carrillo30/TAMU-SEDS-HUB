# location: spec/feature/integration_spec_announcements.rb

require 'rails_helper'

RSpec.describe 'Announcement Integration Tests', type: :feature do
  before do
    stub_omniauth
    visit root_path
    click_button "Sign In"

    visit new_announcement_path
    fill_in 'Title', with: 'NASA-lam Poetry'
    fill_in 'Category', with: 'General'
    fill_in 'Contents', with: 'words words words...'

    click_on 'Create Announcement'
  end
  
  scenario 'Creating Announcement' do
    visit announcements_path
    expect(page).to have_content('NASA-lam Poetry')
    expect(page).to have_content('general')
    expect(page).to have_content('words words words...')
  end

  scenario 'Edit Announcement' do
    visit edit_announcement_path(Announcement.find_by_title("NASA-lam Poetry"))
    fill_in 'Contents', with: 'stuff'
    click_button "Update Announcement"
    visit announcements_path
    expect(page).to have_content('stuff')
  end

  scenario 'Delete Announcement' do
    visit announcements_path
    find('tr', text: 'NASA-lam Poetry').find(:css, '.dropdown').click_on("Delete")
    visit announcements_path
    expect(page).to have_no_content('NASA-lam Poetry')
  end
  
  scenario 'Show Announcement' do
    visit announcements_path
    find('tr', text: 'NASA-lam Poetry').find(:css, '.dropdown').click_on("Show")
    expect(page).to have_content('NASA-lam Poetry')
  end
end
