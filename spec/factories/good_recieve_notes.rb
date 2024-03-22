FactoryBot.define do
  factory :good_recieve_note do
    grn_number { Faker::Alphanumeric.alpha(number: 10) }
    date_of_receipt {Date.current }
    total_quantity { 10 }
    total_amount { 100 }
    recieved_condition { Faker::Lorem.word }
    comments { Faker::Lorem.sentence }
    purchase_order
  end
end
