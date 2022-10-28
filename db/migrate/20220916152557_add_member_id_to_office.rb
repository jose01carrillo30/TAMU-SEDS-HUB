# frozen_string_literal: true

class AddMemberIdToOffice < ActiveRecord::Migration[6.1]
  def change
    add_column :offices, :member_id, :integer, index: true
    add_foreign_key :offices, :members
  end
end
