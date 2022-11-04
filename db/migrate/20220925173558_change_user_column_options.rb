# frozen_string_literal: true

class ChangeUserColumnOptions < ActiveRecord::Migration[6.1]
  def change
    change_column :users, :email, :string, default: '', null: false
  end
end
