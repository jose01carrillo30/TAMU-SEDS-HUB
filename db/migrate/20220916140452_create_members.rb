# frozen_string_literal: true

class CreateMembers < ActiveRecord::Migration[6.1]
  def change
    create_table :members do |t|
      t.string :email
      t.string :first_name
      t.string :last_name
      t.string :pronouns
      t.string :classification
      t.string :major
      t.string :phone_number

      t.timestamps
    end
  end
end
