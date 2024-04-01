class SalesOrder < ApplicationRecord
  has_many :goods_issued_notes
  validates :order_number, :order_date, :delivery_date, :status, presence: true
  validates :order_number, uniqueness: true

  DRAFT = 'Draft'.freeze
  ACCEPTED = 'Accepted'.freeze
  CANCLLED = 'Canclled'.freeze
  SUBMITTED = 'Submitted'.freeze
  CONFIRMED = 'Confirmed'.freeze

  STATUSES = [DRAFT, ACCEPTED, CANCLLED, SUBMITTED, CONFIRMED].freeze
end
