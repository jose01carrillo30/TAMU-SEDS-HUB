# frozen_string_literal: true

json.extract! office, :id, :title, :permissions, :created_at, :updated_at
json.url office_url(office, format: :json)
