# location: spec/unit/unit_spec_attendence_records.rb
require 'rails_helper'

RSpec.describe AttendanceRecord, type: :model do
  subject do
    described_class.new(arrival_time: DateTime.new(2022, 10, 26, 4, 5, 6), user_id: '1', event_id: '1', created_at: DateTime.new(2022, 10, 22, 4, 5, 6), updated_at: DateTime.new(2022, 10, 26, 4, 5, 6))
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end
  
  it 'is not valid without a arrival_time' do
    subject.arrival_time = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid without a user_id' do
    subject.user_id = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid without a event_id' do
    subject.event_id = nil
    expect(subject).not_to be_valid
  end
end

