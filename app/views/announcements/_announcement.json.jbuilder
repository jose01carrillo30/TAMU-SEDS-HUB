# frozen_string_literal: true

json.extract! announcement, :id, :send_time, :title, :category, :contents, :created_at, :updated_at
json.url announcement_url(announcement, format: :json)
