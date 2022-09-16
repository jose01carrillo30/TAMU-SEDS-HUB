require 'rails_helper'

RSpec.describe "announcements/index", type: :view do
  before(:each) do
    assign(:announcements, [
      Announcement.create!(
        title: "Title",
        category: "Category",
        contents: "MyText"
      ),
      Announcement.create!(
        title: "Title",
        category: "Category",
        contents: "MyText"
      )
    ])
  end

  it "renders a list of announcements" do
    render
    assert_select "tr>td", text: "Title".to_s, count: 2
    assert_select "tr>td", text: "Category".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
  end
end
