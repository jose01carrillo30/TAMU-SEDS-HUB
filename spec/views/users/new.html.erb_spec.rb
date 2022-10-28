require 'rails_helper'

RSpec.describe "users/new", type: :view do
  before(:each) do
    assign(:user, User.new(
      email: "MyString",
      first_name: "MyString",
      last_name: "MyString",
      pronouns: "MyString",
      classification: "MyString",
      major: "MyString",
      phone_number: "MyString"
    ))
  end

  it "renders new user form" do
    render

    assert_select "form[action=?][method=?]", users_path, "post" do

      assert_select "input[name=?]", "user[email]"

      assert_select "input[name=?]", "user[first_name]"

      assert_select "input[name=?]", "user[last_name]"

      assert_select "input[name=?]", "user[pronouns]"

      assert_select "input[name=?]", "user[classification]"

      assert_select "input[name=?]", "user[major]"

      assert_select "input[name=?]", "user[phone_number]"
    end
  end
end
