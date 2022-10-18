# frozen_string_literal: true

class AddMemberIdToDues < ActiveRecord::Migration[6.1]
  def change
    add_column :dues, :member_id, :integer, index: true
    add_foreign_key :dues, :members
  end
end
