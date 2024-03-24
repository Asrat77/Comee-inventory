# frozen_string_literal: true

FactoryBot.define do
  factory :received_item do
    quantity_ordered { Faker::Number.number(digits: 3) }
    quantity_received { Faker::Number.number(digits: 3) }
    unit_price { 20 }
    total_price { unit_price * quantity_received }
    purchase_order_item
    good_recieve_note
  end
end
