# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'dues/show', type: :view do
  before(:each) do
    @due = assign(:due, Due.create!(
                          purpose: 'Purpose'
                        ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Purpose/)
  end
end
