class AddPaymentStatusToDues < ActiveRecord::Migration[6.1]
  def change
    add_column :dues, :payment_status, :string
  end
end