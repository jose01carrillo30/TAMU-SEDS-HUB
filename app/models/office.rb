# frozen_string_literal: true

class Office < ApplicationRecord
  validates :title, :permissions, :user_id, presence: true
end