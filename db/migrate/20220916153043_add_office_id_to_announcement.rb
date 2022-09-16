class AddOfficeIdToAnnouncement < ActiveRecord::Migration[6.1]
  def change
    add_column :announcements, :office_id, :integer, index: true
    add_foreign_key :announcements, :offices
  end
end
