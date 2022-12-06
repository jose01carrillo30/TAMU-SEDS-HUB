# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'dues/index', type: :view do
  before(:each) do
    @user = assign(:user, User.create!(
      email: 'Email',
      first_name: 'First Name',
      last_name: 'Last Name',
      pronouns: 'Pronouns',
      classification: 'Classification',
      major: 'Major',
      phone_number: 'Phone Number'
    ))

    assign(:dues, [
             Due.create!(
               purpose: 'Purpose',
               transaction_date: '2022-10-07 21:05:00',
               user_id: @user.id,
                due_type: 'Due type',
                is_paid: 'Is paid',
                amount_due: 'Amount due'
             ),
             Due.create!(
               purpose: 'Purpose',
               transaction_date: '2022-10-07 21:05:00',
               user_id: @user.id,
                due_type: 'Due type',
                is_paid: 'Is paid',
                amount_due: 'Amount due'
             )
           ])
  end

  it 'renders a list of dues' do
    render
    assert_select 'tr>td', text: 'Purpose'.to_s, count: 2
    # assert_select 'tr>td', text: 'Transaction date'.to_s, count: 2
    assert_select 'tr>td', text: 'Due type'.to_s, count: 2
    assert_select 'tr>td', text: 'Is paid'.to_s, count: 2
    # assert_select 'tr>td', text: 'Amount due'.to_s, count: 2
  end
end
