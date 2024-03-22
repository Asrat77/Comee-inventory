class PurchaseOrderItem < ApplicationRecord
  before_save :update_total_price
  belongs_to :purchase_order
  validates :status, :delivery_date, :quantity, :unit_price, :total_price,presence: true


  DRAFT = "Draft".freeze
  ACCEPTED = "Accepted".freeze
  CANCLLED = "Canclled".freeze
  SUBMITTED = "Submitted".freeze
  CONFIRMED = "Confirmed".freeze

  STATUSES = [DRAFT, ACCEPTED, CANCLLED, SUBMITTED, CONFIRMED].freeze

  validates :status, inclusion: { in: STATUSES }

  def update_total_price
    self.total_price ||= 0
    self.total_price = unit_price * quantity
    total_price
  end

end
