FactoryBot.define do
  factory :sales_order do
    order_number { Faker::Lorem.word }
    order_date { Date.today }
    order_terms { Faker::Lorem.sentence }
    delivery_address { 'Address 001' }
    delivery_date { Date.today.advance(days: 7) }
    status { 'Draft' }
    total_price { 1.5 }
    remark { Faker::Lorem.word }
  end
end
