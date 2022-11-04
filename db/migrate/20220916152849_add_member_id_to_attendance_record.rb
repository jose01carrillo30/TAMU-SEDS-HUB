# frozen_string_literal: true

class AddMemberIdToAttendanceRecord < ActiveRecord::Migration[6.1]
  def change
    add_column :attendance_records, :member_id, :integer, index: true
    add_foreign_key :attendance_records, :members
  end
end
