# frozen_string_literal: true

class PurchaseOrder < ApplicationRecord
  belongs_to :supplier
  validates :po_number, :purchase_order_date, :status, :delivery_date, presence: true
  validates :po_number, uniqueness: true

  DRAFT = 'Draft'
  ACCEPTED = 'Accepted'
  CANCLLED = 'Canclled'
  SUBMITTED = 'Submitted'
  CONFIRMED = 'Confirmed'

  STATUSES = [DRAFT, ACCEPTED, CANCLLED, SUBMITTED, CONFIRMED].freeze

  validates :status, inclusion: { in: STATUSES }

  delegate(:name, to: :supplier, prefix: true)
end
