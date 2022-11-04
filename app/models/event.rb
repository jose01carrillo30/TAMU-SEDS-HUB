# frozen_string_literal: true

class Event < ApplicationRecord
  validates :name, :description, :meeting_time, :location, :duration, presence: true
end
