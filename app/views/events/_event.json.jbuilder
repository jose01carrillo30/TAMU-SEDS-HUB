json.extract! event, :id, :name, :description, :meeting_time, :location, :duration, :created_at, :updated_at
json.url event_url(event, format: :json)
