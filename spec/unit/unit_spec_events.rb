# location: spec/unit/unit_spec_events.rb
require 'rails_helper'

RSpec.describe Event, type: :model do
  subject do
    described_class.new(name: 'Meeting', description: 'First SEDS Meeting of the Semester', meeting_time: DateTime.new(2022, 10, 28, 4, 5, 6), location: 'Annex 229', duration: '10:00:00', created_at: DateTime.new(2022, 10, 22, 4, 5, 6), updated_at: DateTime.new(2022, 10, 26, 4, 5, 6))
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end
  
  it 'is not valid without a name' do
    subject.name = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid without a description' do
    subject.description = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid without a meeting_time' do
    subject.meeting_time = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid without location' do
    subject.location = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid without duration' do
    subject.duration = nil
    expect(subject).not_to be_valid
  end
end

