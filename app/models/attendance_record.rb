# frozen_string_literal: true

class AttendanceRecord < ApplicationRecord
  validates :arrival_time, :user_id, :event_id, presence: true
  belongs_to :user
  belongs_to :event
end
