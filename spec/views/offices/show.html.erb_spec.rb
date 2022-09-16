require 'rails_helper'

RSpec.describe "offices/show", type: :view do
  before(:each) do
    @office = assign(:office, Office.create!(
      title: "Title",
      permissions: "Permissions"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Permissions/)
  end
end
