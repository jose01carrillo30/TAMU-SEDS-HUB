# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'users/index', type: :view do
  before(:each) do
    assign(:users, [
             User.create!(
               email: 'Email',
               first_name: 'First Name',
               last_name: 'Last Name',
               pronouns: 'Pronouns',
               classification: 'Classification',
               major: 'Major',
               phone_number: 'Phone Number'
             ),
             User.create!(
               email: 'Email2',
               first_name: 'First Name',
               last_name: 'Last Name',
               pronouns: 'Pronouns',
               classification: 'Classification',
               major: 'Major',
               phone_number: 'Phone Number'
             )
           ])
  end

  it 'renders a list of users' do
    render
    assert_select 'tr>td', text: 'email'.to_s, count: 1
    assert_select 'tr>td', text: 'email2'.to_s, count: 1
    assert_select 'tr>td', text: 'First Name'.to_s, count: 2
    assert_select 'tr>td', text: 'Last Name'.to_s, count: 2
    assert_select 'tr>td', text: 'Pronouns'.to_s, count: 2
    assert_select 'tr>td', text: 'Classification'.to_s, count: 2
    assert_select 'tr>td', text: 'Major'.to_s, count: 2
    assert_select 'tr>td', text: 'Phone Number'.to_s, count: 2
  end
end
