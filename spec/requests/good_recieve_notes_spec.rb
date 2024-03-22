require 'rails_helper'

RSpec.describe "GoodRecieveNotes", type: :request do
  include_examples("request_shared_spec", "good_recieve_notes", 8)


  let(:valid_attributes) do
    {
      grn_number: Faker::Alphanumeric.alpha(number: 10),
      date_of_receipt: Date.current,
      total_quantity: 10,
      total_amount: 700,
      comments: Faker::Lorem.sentence,
      recieved_condition: Faker::Lorem.word,
      purchase_order_id: create(:purchase_order).id
    }
  end

  let(:invalid_attributes) do
    {
      grn_number: nil,
    }
  end

  let(:new_attributes) do
    {
      total_quantity: 20
    }
  end
end
