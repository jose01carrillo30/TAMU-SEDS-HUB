class CreateAttendanceRecords < ActiveRecord::Migration[6.1]
  def change
    create_table :attendance_records do |t|
      t.datetime :arrival_time

      t.timestamps
    end
  end
end
