# location: spec/feature/integration_spec_offices.rb
require 'rails_helper'

RSpec.describe 'Offices Integration Tests', type: :feature do
  before do
    stub_omniauth
    visit root_path
    click_button "Sign In"

    visit new_office_path
    fill_in 'Title', with: 'President'
    fill_in 'Permission', with: 'Admin'
    click_on 'Create Office'
  end
  
  scenario 'Creating Office' do
    visit offices_path
    expect(page).to have_content('President')
    expect(page).to have_content('Admin')
  end

  scenario 'Edit Office' do
    visit edit_office_path(Office.find_by_title("President"))
    fill_in 'Title', with: 'Vice President'
    click_button "Update Office"
    visit offices_path
    expect(page).to have_content('Vice President')
  end

  scenario 'Delete Office' do
    visit offices_path
    find('tr', text: 'President').find(:css, '.dropdown').click_on("Delete")
    visit offices_path
    expect(page).to have_no_content('President')
  end
  
  scenario 'Show Office' do
    visit offices_path
    find('tr', text: 'President').find(:css, '.dropdown').click_on("Show")
    expect(page).to have_content('President')
  end
end
