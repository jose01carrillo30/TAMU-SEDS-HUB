# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'events/show', type: :view do
  before(:each) do
    @event = assign(:event, Event.create!(
                              name: 'Name',
                              description: 'MyText',
                              location: 'Location',
                              duration: '21:05:00',
                              meeting_time: '2022-10-07 21:05:00'
                            ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Location/)
  end
end
