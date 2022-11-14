class AddPaymentTypeToDues < ActiveRecord::Migration[6.1]
  def change
    add_column :dues, :payment_type, :string
  end
end
