# frozen_string_literal: true

class Announcement < ApplicationRecord
    validates :send_time, :title, :category, :contents, :office_id, presence: true
end
