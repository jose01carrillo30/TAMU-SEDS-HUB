# frozen_string_literal: true

json.extract! attendance_record, :id, :arrival_time, :created_at, :updated_at
json.url attendance_record_url(attendance_record, format: :json)
