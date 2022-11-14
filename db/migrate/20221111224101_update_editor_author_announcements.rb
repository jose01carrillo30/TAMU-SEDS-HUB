class UpdateEditorAuthorAnnouncements < ActiveRecord::Migration[6.1]
  def change
    remove_column :announcements, :office_id, :integer
    remove_column :announcements, :editor_id, :integer
    add_column :announcements, :author_email, :string
    add_column :announcements, :editor_email, :string
  end
end
