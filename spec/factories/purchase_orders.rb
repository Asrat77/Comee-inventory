# frozen_string_literal: true

FactoryBot.define do
  factory :purchase_order do
    po_number { Faker::Alphanumeric.alpha(number: 10) }
    purchase_order_date { Date.current }
    status { 'Draft' }
    delivery_date { Date.current.advance(days: 7) }
    supplier
  end
end
