require 'rails_helper'

RSpec.describe "members/edit", type: :view do
  before(:each) do
    @member = assign(:member, Member.create!(
      email: "MyString",
      first_name: "MyString",
      last_name: "MyString",
      pronouns: "MyString",
      classification: "MyString",
      major: "MyString",
      phone_number: "MyString"
    ))
  end

  it "renders the edit member form" do
    render

    assert_select "form[action=?][method=?]", member_path(@member), "post" do

      assert_select "input[name=?]", "member[email]"

      assert_select "input[name=?]", "member[first_name]"

      assert_select "input[name=?]", "member[last_name]"

      assert_select "input[name=?]", "member[pronouns]"

      assert_select "input[name=?]", "member[classification]"

      assert_select "input[name=?]", "member[major]"

      assert_select "input[name=?]", "member[phone_number]"
    end
  end
end
