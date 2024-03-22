class GoodRecieveNote < ApplicationRecord
  belongs_to :purchase_order
  validates :grn_number, uniqueness: true
  validates :total_quantity, :total_amount, :grn_number,presence: true


end
