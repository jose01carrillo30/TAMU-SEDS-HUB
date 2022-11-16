class AddDueTypeToDues < ActiveRecord::Migration[6.1]
  def change
    add_column :dues, :due_type, :string
  end
end