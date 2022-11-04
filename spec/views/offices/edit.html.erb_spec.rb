# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'offices/edit', type: :view do
  before(:each) do
    @office = assign(:office, Office.create!(
                                title: 'MyString',
                                permissions: 'MyString'
                              ))
  end

  it 'renders the edit office form' do
    render

    assert_select 'form[action=?][method=?]', office_path(@office), 'post' do
      assert_select 'input[name=?]', 'office[title]'

      assert_select 'input[name=?]', 'office[permissions]'
    end
  end
end
