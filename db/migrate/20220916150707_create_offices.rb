class CreateOffices < ActiveRecord::Migration[6.1]
  def change
    create_table :offices do |t|
      t.string :name
      t.string :permissions

      t.timestamps
    end
  end
end
