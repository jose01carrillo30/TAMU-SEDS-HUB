class AddIsPaidToDues < ActiveRecord::Migration[6.1]
  def change
    add_column :dues, :is_paid, :string
  end
end
