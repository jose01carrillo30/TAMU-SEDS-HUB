# frozen_string_literal: true

class RenameOfficeTitle < ActiveRecord::Migration[6.1]
  def change
    rename_column :offices, :name, :title
  end
end
