class RemoveAmountPaidFromDues < ActiveRecord::Migration[6.1]
  def change
    remove_column :dues, :amount_paid, :decimal, precision: 8, scale: 2
  end
end
