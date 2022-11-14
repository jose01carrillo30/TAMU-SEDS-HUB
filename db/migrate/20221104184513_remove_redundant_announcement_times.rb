class RemoveRedundantAnnouncementTimes < ActiveRecord::Migration[6.1]
  def change
    remove_column :announcements, :send_time, :datetime
    remove_column :announcements, :last_edited, :datetime
  end
end
