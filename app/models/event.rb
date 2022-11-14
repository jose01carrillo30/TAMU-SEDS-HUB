# frozen_string_literal: true

class Event < ApplicationRecord
  validates :name, :description, :meeting_time, :location, :duration, presence: true
    has_many :users, through: :attendance_records
    has_many :attendance_records
    has_one_attached :image
end
