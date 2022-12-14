# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'offices/index', type: :view do
  before(:each) do
    assign(:offices, [
             Office.create!(
               title: 'Title',
               permissions: 'Permissions'
             ),
             Office.create!(
               title: 'Title',
               permissions: 'Permissions'
             )
           ])
  end

  it 'renders a list of offices' do
    render
    assert_select 'tr>td', text: 'Title'.to_s, count: 2
    assert_select 'tr>td', text: 'Permissions'.to_s, count: 2
  end
end
