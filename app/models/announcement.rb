class Announcement < ApplicationRecord
    
    validates :title, :category, :contents, :send_time, presence: true
end
