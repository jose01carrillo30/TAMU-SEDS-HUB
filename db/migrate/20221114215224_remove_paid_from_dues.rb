class RemovePaidFromDues < ActiveRecord::Migration[6.1]
  def change
    remove_column :dues, :paid, :string
  end
end
