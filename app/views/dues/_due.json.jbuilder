# frozen_string_literal: true

json.extract! due, :id, :purpose, :transaction_date, :created_at, :updated_at
json.url due_url(due, format: :json)
