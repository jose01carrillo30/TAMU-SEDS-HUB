# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'attendance_records/show', type: :view do
  before(:each) do
    @user = assign(:user, User.create!(
      email: 'Email',
      first_name: 'First Name',
      last_name: 'Last Name',
      pronouns: 'Pronouns',
      classification: 'Classification',
      major: 'Major',
      phone_number: 'Phone Number'
    ))

    @event = assign(:event, Event.create!(
      name: 'MyString',
      description: 'MyText',
      location: 'MyString',
      duration: '21:05:00',
      meeting_time: '2022-10-07 21:05:00'
    ))

    @attendance_record = assign(:attendance_record, AttendanceRecord.create!(
      arrival_time: '2022-10-07 21:05:00',
      user_id: @user.id,
      event_id: @event.id
    ))
  end

  it 'renders attributes in <p>' do
    render
  end
end
