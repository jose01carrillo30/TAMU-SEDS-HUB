# location: spec/unit/unit_spec_announcements.rb
require 'rails_helper'

RSpec.describe Announcement, type: :model do
  subject do
    described_class.new(send_time: DateTime.new(2001, 2, 3, 4, 5, 6), title: 'Test Announcement', category: 'J.K. Rowling', contents: 'gobbledey-gook')
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end
  
  it 'is not valid without a send time' do
    subject.send_time = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid without a title' do
    subject.title = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid without a category' do
    subject.category = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid without contents' do
    subject.contents = nil
    expect(subject).not_to be_valid
  end
end
