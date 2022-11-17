class RemoveAmountDueFromDues < ActiveRecord::Migration[6.1]
  def change
    remove_column :dues, :amount_due, :decimal, precision: 8, scale: 2
  end
end