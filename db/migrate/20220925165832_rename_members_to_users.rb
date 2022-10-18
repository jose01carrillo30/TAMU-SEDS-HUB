# frozen_string_literal: true

class RenameMembersToUsers < ActiveRecord::Migration[6.1]
  def change
    rename_table :members, :users
  end
end
