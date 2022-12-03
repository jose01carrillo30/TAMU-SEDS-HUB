# location: spec/feature/integration_spec_events.rb
require 'rails_helper'

RSpec.describe 'Events Integration Tests', type: :feature do
  before do
    stub_omniauth
    visit root_path
    click_button "Sign In"

    visit new_event_path
    fill_in 'Name', with: 'Meeting 1'
    fill_in 'Description', with: 'General Meeting for Members'
    fill_in 'Meeting time', with: '2022-10-07 21:05:00'
    fill_in 'Location', with: 'MSC 1234'
    fill_in 'Duration', with: '00:05:00'
    attach_file('Image', File.join(Rails.root, '/spec/feature/meeting_image.jpg'))
    click_on 'Create Event'
  end
  
  scenario 'Creating Event' do
    visit events_path
    expect(page).to have_content('Meeting 1')
    expect(page).to have_content('General Meeting for Members')
    expect(page).to have_content('21:05')
    expect(page).to have_content('MSC 1234')
    expect(page).to have_content('05')
  end

  scenario 'Edit Event' do
    visit edit_event_path(Event.find_by_name("Meeting 1"))
    fill_in 'Location', with: 'Zach 123'
    click_button "Update Event"
    visit events_path
    expect(page).to have_content('Zach 123')
  end

  scenario 'Delete Event' do
    visit events_path
    find('tr', text: 'Meeting 1').find(:css, '.dropdown').click_on("Delete")
    visit events_path
    expect(page).to have_no_content('Meeting 1')
  end
  
  scenario 'Show Event' do
    visit events_path
    find('tr', text: 'Meeting 1').find(:css, '.dropdown').click_on("Show")
    expect(page).to have_content('Meeting 1')
  end
end
