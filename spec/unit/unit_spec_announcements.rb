# location: spec/unit/unit_spec_announcements.rb
require 'rails_helper'

RSpec.describe Announcement, type: :model do
  subject do
    described_class.new(send_time: DateTime.new(2022, 10, 26, 4, 5, 6), title: 'Pay your dues today', category: 'Dues', contents: 'Remember to pay your dues or get kicked out', created_at: DateTime.new(2022, 10, 22, 4, 5, 6), updated_at: DateTime.new(2022, 10, 26, 4, 5, 6), office_id: 2)
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end
  
  it 'is not valid without a send_time' do
    subject.send_time = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid without a category' do
    subject.category = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid without a contents' do
    subject.contents = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid without office_id' do
    subject.office_id = nil
    expect(subject).not_to be_valid
  end
end

