# frozen_string_literal: true

class Event < ApplicationRecord
    has_many :users, through: :attendance_records
    has_many :attendance_records
end
