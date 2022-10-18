# frozen_string_literal: true

class CreateAnnouncements < ActiveRecord::Migration[6.1]
  def change
    create_table :announcements do |t|
      t.datetime :send_time
      t.string :title
      t.string :category
      t.text :contents

      t.timestamps
    end
  end
end
