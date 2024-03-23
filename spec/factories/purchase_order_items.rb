FactoryBot.define do
  factory :purchase_order_item do
    status { 'Draft' }
    delivery_date { Date.current.advance(days: 7) }
    quantity { 15 }
    unit_price { 10 }
    total_price { 150 }
    purchase_order
  end
end
