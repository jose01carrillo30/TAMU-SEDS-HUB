# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'events/index', type: :view do
  before(:each) do
    assign(:events, [
             Event.create!(
               name: 'Name',
               description: 'MyText',
               location: 'Location',
               duration: '21:05:00',
               meeting_time: '2022-10-07 21:05:00'
             ),
             Event.create!(
               name: 'Name',
               description: 'MyText',
               location: 'Location',
               duration: '21:05:00',
               meeting_time: '2022-10-07 21:05:00'
             )
           ])
  end

  it 'renders a list of events' do
    render
    assert_select 'tr>td', text: 'Name'.to_s, count: 2
    assert_select 'tr>td', text: 'MyText'.to_s, count: 2
    assert_select 'tr>td', text: 'Location'.to_s, count: 2
  end
end
