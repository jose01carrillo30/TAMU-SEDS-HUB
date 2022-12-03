# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'attendance_records/index', type: :view do
  before(:each) do
    @user = assign(:user, User.create!(
      email: 'Email',
      first_name: 'First Name',
      last_name: 'Last Name',
      pronouns: 'Pronouns',
      classification: 'Classification',
      major: 'Major',
      phone_number: 'Phone Number',
    ))

    @event = assign(:event, Event.create!(
      name: 'MyString',
      description: 'MyText',
      location: 'MyString',
      duration: '21:05:00',
      meeting_time: '2022-10-07 21:05:00'
    ))

    assign(:attendance_records, [
             AttendanceRecord.create!(
                arrival_time: '2022-10-07 21:05:00',
                user_id: @user.id,
                event_id: @event.id
              ),
             AttendanceRecord.create!(
                arrival_time: '2022-10-07 21:05:00',
                user_id: @user.id,
                event_id: @event.id
              )
           ])
  end

  it 'renders a list of attendance_records' do
    # render
  end
end
