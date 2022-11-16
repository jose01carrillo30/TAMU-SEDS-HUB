class RemovePaymentStatusFromDues < ActiveRecord::Migration[6.1]
  def change
    remove_column :dues, :payment_status, :string
  end
end