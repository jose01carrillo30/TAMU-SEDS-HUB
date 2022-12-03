# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'events/new', type: :view do
  before(:each) do
    assign(:event, Event.new(
                     name: 'MyString',
                     description: 'MyText',
                     location: 'MyString',
                     duration: '21:05:00',
                     meeting_time: '2022-10-07 21:05:00'
                   ))
  end

  it 'renders new event form' do
    render

    assert_select 'form[action=?][method=?]', events_path, 'post' do
      assert_select 'input[name=?]', 'event[name]'

      assert_select 'textarea[name=?]', 'event[description]'

      assert_select 'input[name=?]', 'event[location]'
    end
  end
end
