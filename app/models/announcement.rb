# frozen_string_literal: true

class Announcement < ApplicationRecord
    validates :title, :category, :contents, :office_id, presence: true
end
