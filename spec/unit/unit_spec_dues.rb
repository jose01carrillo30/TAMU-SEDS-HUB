# location: spec/unit/unit_spec_dues.rb
require 'rails_helper'

RSpec.describe Due, type: :model do
  subject do
    described_class.new(purpose: 'you owe $12', transaction_date: DateTime.new(2022, 10, 26, 4, 5, 6), created_at: DateTime.new(2022, 10, 22, 4, 5, 6), updated_at: DateTime.new(2022, 10, 26, 4, 5, 6), amount_due: '11.99', amount_paid: '0', user_id: '1')
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end
  
  it 'is not valid without a purpose' do
    subject.purpose = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid without a transaction_date' do
    subject.transaction_date = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid without user_id' do
    subject.user_id = nil
    expect(subject).not_to be_valid
  end
end
