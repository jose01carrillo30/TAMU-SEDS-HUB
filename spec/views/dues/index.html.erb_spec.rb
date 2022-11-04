# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'dues/index', type: :view do
  before(:each) do
    assign(:dues, [
             Due.create!(
               purpose: 'Purpose'
             ),
             Due.create!(
               purpose: 'Purpose'
             )
           ])
  end

  it 'renders a list of dues' do
    render
    assert_select 'tr>td', text: 'Purpose'.to_s, count: 2
  end
end
