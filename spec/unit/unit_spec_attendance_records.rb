# location: spec/unit/unit_spec_attendence_records.rb
require 'rails_helper'

RSpec.describe AttendanceRecord, type: :model do
  let(:event) {Event.create(name: 'Test Event', description: 'This is a test event by the development team!',
          meeting_time: '2022-10-07 21:05:00', location: 'Mars', duration: '2000-01-01 00:30:00' 
      )}
  let(:user) {User.create(email: "test@test.com", first_name: "Csce431", last_name: "SedsHubAuditor", pronouns: "", 
    classification: "", major: "", phone_number: "", uid: "100526717802015493443", 
    avatar_url: "https://lh3.googleusercontent.com/a/ALm5wu1eQf_dcy4JnHo20vneQiXxpYJiWVfR65Bau_vy=s96-c", 
    provider: nil, role: "admin"
  )}

  subject do
    described_class.new(arrival_time: DateTime.new(2022, 10, 26, 4, 5, 6), user_id: user.id, event_id: event.id, created_at: DateTime.new(2022, 10, 22, 4, 5, 6), updated_at: DateTime.new(2022, 10, 26, 4, 5, 6))
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
