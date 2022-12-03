# location: spec/feature/integration_spec_dues.rb
require 'rails_helper'

RSpec.describe 'Dues Integration Tests', type: :feature do
  before do
    stub_omniauth
    visit root_path
    click_button "Sign In"

    visit new_due_path
    fill_in 'Purpose', with: 'Semester Due'
    fill_in 'Transaction date', with: '2022-10-07 21:05:00'
    select 'Csce431 SedsHubAuditor', from: 'User'
    fill_in 'Due type', with: 'Semester'
    fill_in 'Is paid', with: 'False'
    fill_in 'Amount due', with: '9.99'
    click_on 'Create Due'
  end
  
  scenario 'Creating Due' do
    visit dues_path
    expect(page).to have_content('Semester Due')
    expect(page).to have_content('2022-10-07 21:05:00')
    expect(page).to have_content('Csce431 SedsHubAuditor')
    expect(page).to have_content('False')
    expect(page).to have_content('9.99')
  end

  scenario 'Edit Due' do
    visit edit_due_path(Due.find_by_purpose('Semester Due'))
    fill_in 'Amount due', with: '19.99'
    click_button "Update Due"
    visit dues_path
    expect(page).to have_content('19.99')
  end

  scenario 'Delete Due' do
    visit dues_path
    find('tr', text: 'Csce431 SedsHubAuditor').find(:css, '.dropdown').click_on("Delete")
    visit dues_path
    expect(page).to have_no_content('Semester Due')
  end
  
  scenario 'Show Due' do
    visit dues_path
    find('tr', text: 'Csce431 SedsHubAuditor').find(:css, '.dropdown').click_on("Show")
    expect(page).to have_content('Semester Due')
  end
end
