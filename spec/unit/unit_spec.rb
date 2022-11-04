# location: spec/unit/unit_spec_announcements.rb
require 'rails_helper'

RSpec.describe Announcement, type: :model do
  subject do
    described_class.new(title: 'Test Announcement', category: 'cat-X', contents: 'blah blah-blah')
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
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

