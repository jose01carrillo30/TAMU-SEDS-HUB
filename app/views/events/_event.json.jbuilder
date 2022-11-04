# frozen_string_literal: true

json.extract! event, :id, :name, :description, :meeting_time, :location, :duration, :created_at, :updated_at, :speaker_name
json.url event_url(event, format: :json)
