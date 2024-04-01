FactoryBot.define do
  factory :goods_issued_note do
    gin_number { Faker::Alphanumeric.alpha(number: 10) }
    date_issued { Date.today }
    issued_by { Faker::Name.name }
    issued_to { Faker::Name.name }
    fulfillment_center
    sales_order
  end
end
