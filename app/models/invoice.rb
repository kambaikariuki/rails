class Invoice < ApplicationRecord
  validates :total_amount_cents, numericality: { greater_than: 0 }
  validates :member_id, presence: true
end