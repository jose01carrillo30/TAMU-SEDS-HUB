# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'users/edit', type: :view do
  before(:each) do
    @user = assign(:user, User.create!(
                            email: 'MyString',
                            first_name: 'MyString',
                            last_name: 'MyString',
                            pronouns: 'MyString',
                            classification: 'MyString',
                            major: 'MyString',
                            phone_number: 'MyString'
                          ))
  end

  it 'renders the edit user form' do
    render

    assert_select 'form[action=?][method=?]', user_path(@user), 'post' do
      assert_select 'input[name=?]', 'user[email]'

      assert_select 'input[name=?]', 'user[first_name]'

      assert_select 'input[name=?]', 'user[last_name]'

      assert_select 'input[name=?]', 'user[pronouns]'

      assert_select 'input[name=?]', 'user[classification]'

      assert_select 'input[name=?]', 'user[major]'

      assert_select 'input[name=?]', 'user[phone_number]'
    end
  end
end
