# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'events/edit', type: :view do
  before(:each) do
    @event = assign(:event, Event.create!(
                              name: 'MyString',
                              description: 'MyText',
                              location: 'MyString',
                              duration: '21:05:00',
                              meeting_time: '2022-10-07 21:05:00'
                            ))
  end

  it 'renders the edit event form' do
    render

    assert_select 'form[action=?][method=?]', event_path(@event), 'post' do
      assert_select 'input[name=?]', 'event[name]'

      assert_select 'textarea[name=?]', 'event[description]'

      assert_select 'input[name=?]', 'event[location]'
    end
  end
end
