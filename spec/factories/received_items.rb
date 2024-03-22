FactoryBot.define do
  factory :received_item do
    quantity_ordered { 15 }
    quantity_received { 15 }
    unit_price { 20 }
    total_price { 300 }
    purchase_order_item
    good_recieve_note
  end
end
