# frozen_string_literal: true

class Office < ApplicationRecord
  validates :title, :permissions, presence: true
end
