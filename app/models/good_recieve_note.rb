# frozen_string_literal: true

class GoodRecieveNote < ApplicationRecord
  has_many :received_items
  belongs_to :purchase_order
  validates :grn_number, uniqueness: true
  validates :total_quantity, :total_amount, :grn_number, presence: true
end
