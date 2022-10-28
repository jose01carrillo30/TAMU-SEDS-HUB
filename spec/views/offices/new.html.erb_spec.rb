# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'offices/new', type: :view do
  before(:each) do
    assign(:office, Office.new(
                      title: 'MyString',
                      permissions: 'MyString'
                    ))
  end

  it 'renders new office form' do
    render

    assert_select 'form[action=?][method=?]', offices_path, 'post' do
      assert_select 'input[name=?]', 'office[title]'

      assert_select 'input[name=?]', 'office[permissions]'
    end
  end
end
