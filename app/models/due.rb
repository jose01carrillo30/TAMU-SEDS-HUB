# frozen_string_literal: true

class Due < ApplicationRecord
  validates :purpose, :transaction_date, :due_type, :is_paid, :user_id, :amount_due, presence: true
end

