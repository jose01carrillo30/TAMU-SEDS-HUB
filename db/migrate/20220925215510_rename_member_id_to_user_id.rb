# frozen_string_literal: true

class RenameMemberIdToUserId < ActiveRecord::Migration[6.1]
  def change
    rename_column :attendance_records, :member_id, :user_id
    rename_column :dues,               :member_id, :user_id
    rename_column :offices,            :member_id, :user_id
  end
end
