class CreateDues < ActiveRecord::Migration[6.1]
  def change
    create_table :dues do |t|
      t.string :purpose
      t.datetime :transaction_date

      t.timestamps
    end
  end
end
