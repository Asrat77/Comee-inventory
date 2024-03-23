class ReceivedItem < ApplicationRecord
  after_save :update_total_price
  belongs_to :purchase_order_item
  belongs_to :good_recieve_note

  validates :quantity_ordered, :quantity_received, :unit_price, :total_price, presence: true

  def update_total_price
    self.total_price ||= 0
    self.total_price = unit_price * quantity_received
    total_price
  end
end
