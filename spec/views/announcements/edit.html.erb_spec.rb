require 'rails_helper'

RSpec.describe "announcements/edit", type: :view do
  before(:each) do
    @announcement = assign(:announcement, Announcement.create!(
      title: "MyString",
      category: "MyString",
      contents: "MyText"
    ))
  end

  it "renders the edit announcement form" do
    render

    assert_select "form[action=?][method=?]", announcement_path(@announcement), "post" do

      assert_select "input[name=?]", "announcement[title]"

      assert_select "input[name=?]", "announcement[category]"

      assert_select "textarea[name=?]", "announcement[contents]"
    end
  end
end
