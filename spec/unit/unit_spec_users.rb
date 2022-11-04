# location: spec/unit/unit_spec_users.rb
require 'rails_helper'

RSpec.describe User, type: :model do
  subject do
    described_class.new(email: 'user@gmail.com', first_name: 'David', last_name: 'Hung', pronouns: 'He/Him', classification: 'Senior', major: 'Comp Sci', phone_number: '1231231234', uid: '123456789', avatar_url: 'www', provider: 'google', role: 'member')
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end
  
  it 'is not valid without a email' do
    subject.email = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid without a first_name' do
    subject.first_name = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid without a last_name' do
    subject.last_name = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid without pronouns' do
    subject.pronouns = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid without classification' do
    subject.classification = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid without major' do
    subject.major = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid without pronouns' do
    subject.pronouns = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid without phone_number' do
    subject.phone_number = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid without uid' do
    subject.uid = nil
    expect(subject).not_to be_valid
  end
  
  it 'is not valid without avatar_url' do
    subject.avatar_url = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid without phone_number' do
    subject.phone_number = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid without providerr' do
    subject.provider = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid without role' do
    subject.role = nil
    expect(subject).not_to be_valid
  end
end
