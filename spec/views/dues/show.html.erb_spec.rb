# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'dues/show', type: :view do
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

    @due = assign(:due, Due.create!(
                          purpose: 'Purpose',
                          transaction_date: '2022-10-07 21:05:00',
                          user_id: @user.id,
                           due_type: 'Semester Due',
                           is_paid: 'False',
                           amount_due: '9.99'
                        ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Purpose/)
  end
end
