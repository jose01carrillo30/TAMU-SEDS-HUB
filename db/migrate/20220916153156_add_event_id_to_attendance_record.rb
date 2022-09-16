class AddEventIdToAttendanceRecord < ActiveRecord::Migration[6.1]
  def change
    add_column :attendance_records, :event_id, :integer, index: true
    add_foreign_key :attendance_records, :events
  end
end
