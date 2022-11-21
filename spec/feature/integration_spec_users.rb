# location: spec/feature/integration_spec_users.rb
require 'rails_helper'

RSpec.describe 'Users Integration Tests', type: :feature do
  before do
    stub_omniauth
    visit root_path
    click_button "Sign In"

    visit new_user_path
    fill_in 'Email', with: 'test@test.com'
    fill_in 'First name', with: 'Test'
    fill_in 'Last name', with: 'Account'
    fill_in 'Pronouns', with: 'He/Him'
    fill_in 'Classification', with: 'Freshman'
    fill_in 'Major', with: 'General Engineering'
    fill_in 'Phone number', with: '1234567890'
    select "Member", :from => "Role"
    click_on 'Create User'
  end
  
  scenario 'Creating User' do
    visit users_path
    expect(page).to have_content('test@test.com')
    expect(page).to have_content('He/Him')
    expect(page).to have_content('Freshman')
    expect(page).to have_content('1234567890')
    expect(page).to have_content('member')
  end

  scenario 'Edit User' do
    visit edit_user_path(User.find_by_email("test@test.com"))
    fill_in 'First name', with: 'Max'
    click_button "Update User"
    visit users_path
    expect(page).to have_content('Max')
  end

  scenario 'Delete User' do
    visit users_path
    find('tr', text: 'test@test.com').find(:css, '.dropdown').click_on("Delete")
    visit users_path
    expect(page).to have_no_content('test@test.com')
  end
  
  scenario 'Show User' do
    visit users_path
    find('tr', text: 'test@test.com').find(:css, '.dropdown').click_on("Show")
    expect(page).to have_content('test@test.com')
  end
end
