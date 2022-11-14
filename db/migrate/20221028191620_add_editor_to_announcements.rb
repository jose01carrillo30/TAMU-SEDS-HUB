class AddEditorToAnnouncements < ActiveRecord::Migration[6.1]
  def change
    add_column :announcements, :editor_id, :integer
    add_column :announcements, :last_edited, :datetime
  end
end
