# frozen_string_literal: true

class AttendanceRecord < ApplicationRecord
    belongs_to :user
    belongs_to :event
end
