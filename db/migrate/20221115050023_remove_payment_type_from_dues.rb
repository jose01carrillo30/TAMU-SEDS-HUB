class RemovePaymentTypeFromDues < ActiveRecord::Migration[6.1]
  def change
    remove_column :dues, :payment_type, :string
  end
end
