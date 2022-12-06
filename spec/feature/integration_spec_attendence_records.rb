# location: spec/feature/integration_spec_attendence_records.rb
require 'rails_helper'

RSpec.describe 'Attendance Records Integration Tests', type: :feature do
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

    visit new_attendance_record_path
    fill_in 'Arrival time', with: '2022-10-07 21:05:00'
    select 'Csce431 SedsHubAuditor', from: 'User'
    select 'Meeting 1', from: 'Event'
    click_on 'Create Attendance record'
  end
  
  scenario 'Creating Attendance Record' do
    visit attendance_records_path
    expect(page).to have_content('2022-10-07 21:05:00')
    expect(page).to have_content('Csce431 SedsHubAuditor')
    expect(page).to have_content('Meeting 1')
  end

  scenario 'Edit Attendence_record' do
    visit edit_attendance_record_path(AttendanceRecord.find_by_arrival_time("2022-10-07 21:05:00"))
    fill_in 'Arrival time', with: '2022-10-07 22:25:00'
    click_button "Update Attendance record"
    visit attendance_records_path
    expect(page).to have_content('2022-10-07 22:25:00')
  end

  scenario 'Delete Attendence_record' do
    visit attendance_records_path
    find('tr', text: 'Meeting 1').find(:css, '.dropdown').click_on("Delete")
    visit attendance_records_path
    expect(page).to have_no_content('Meeting 1')
  end
  
  scenario 'Show Attendence_record' do
    visit attendance_records_path
    find('tr', text: 'Meeting 1').find(:css, '.dropdown').click_on("Show")
    expect(page).to have_content('Meeting 1')
  end
end
