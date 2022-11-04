# frozen_string_literal: true

class AddDetailsToDues < ActiveRecord::Migration[6.1]
  def change
    add_column :dues, :amount_due, :decimal, precision: 8, scale: 2
    add_column :dues, :amount_paid, :decimal, precision: 8, scale: 2
  end
end
