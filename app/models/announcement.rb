# frozen_string_literal: true

class Announcement < ApplicationRecord
    validates :title, :category, :contents, presence: true
end
