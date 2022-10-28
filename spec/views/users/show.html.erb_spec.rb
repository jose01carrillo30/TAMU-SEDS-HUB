require 'rails_helper'

RSpec.describe "users/show", type: :view do
  before(:each) do
    @user = assign(:user, User.create!(
      email: "Email",
      first_name: "First Name",
      last_name: "Last Name",
      pronouns: "Pronouns",
      classification: "Classification",
      major: "Major",
      phone_number: "Phone Number"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/Pronouns/)
    expect(rendered).to match(/Classification/)
    expect(rendered).to match(/Major/)
    expect(rendered).to match(/Phone Number/)
  end
end
