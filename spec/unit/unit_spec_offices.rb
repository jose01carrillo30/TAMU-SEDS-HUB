# location: spec/unit/unit_spec_offices.rb
require 'rails_helper'

RSpec.describe Office, type: :model do
  subject do
    described_class.new(title: 'President', permissions: 'admin', created_at: DateTime.new(2022, 10, 22, 4, 5, 6), updated_at: DateTime.new(2022, 10, 26, 4, 5, 6))
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end
  
  it 'is not valid without a title' do
    subject.title = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid without a permissions' do
    subject.permissions = nil
    expect(subject).not_to be_valid
  end
end
