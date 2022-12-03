# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'dues/edit', type: :view do
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
                          purpose: 'MyString',
                          transaction_date: '2022-10-07 21:05:00',
                          user_id: @user.id,
                          due_type: 'Semester Due',
                          is_paid: 'False',
                          amount_due: '9.99'
                        ))
  end

  it 'renders the edit due form' do
    render

    assert_select 'form[action=?][method=?]', due_path(@due), 'post' do
      assert_select 'input[name=?]', 'due[purpose]'
    end
  end
end
