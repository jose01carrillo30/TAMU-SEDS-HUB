# frozen_string_literal: true

class Due < ApplicationRecord
  validates :purpose, :transaction_date, :payment_type, :payment_status, :user_id, presence: true
end
