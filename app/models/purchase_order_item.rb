class PurchaseOrderItem < ApplicationRecord
  belongs_to :purchase_order
  validates :status, :delivery_date, :quantity, presence: true


  DRAFT = "Draft".freeze
  ACCEPTED = "Accepted".freeze
  CANCLLED = "Canclled".freeze
  SUBMITTED = "Submitted".freeze
  CONFIRMED = "Confirmed".freeze

  STATUSES = [DRAFT, ACCEPTED, CANCLLED, SUBMITTED, CONFIRMED].freeze

  validates :status, inclusion: { in: STATUSES }
end
