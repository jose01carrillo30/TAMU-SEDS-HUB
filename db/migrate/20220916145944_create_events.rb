# frozen_string_literal: true

class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.string :name
      t.text :description
      t.datetime :meeting_time
      t.string :location
      t.time :duration

      t.timestamps
    end
  end
end
