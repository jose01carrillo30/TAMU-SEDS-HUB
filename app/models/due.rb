# frozen_string_literal: true

class Due < ApplicationRecord
  validates :purpose, :transaction_date, :amount_due, :amount_paid, :user_id, presence: true
end