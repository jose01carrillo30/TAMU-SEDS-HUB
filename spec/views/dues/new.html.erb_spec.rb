# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'dues/new', type: :view do
  before(:each) do
    assign(:due, Due.new(
                   purpose: 'MyString'
                 ))
  end

  it 'renders new due form' do
    render

    assert_select 'form[action=?][method=?]', dues_path, 'post' do
      assert_select 'input[name=?]', 'due[purpose]'
    end
  end
end
