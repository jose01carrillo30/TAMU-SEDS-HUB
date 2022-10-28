# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'dues/edit', type: :view do
  before(:each) do
    @due = assign(:due, Due.create!(
                          purpose: 'MyString'
                        ))
  end

  it 'renders the edit due form' do
    render

    assert_select 'form[action=?][method=?]', due_path(@due), 'post' do
      assert_select 'input[name=?]', 'due[purpose]'
    end
  end
end
