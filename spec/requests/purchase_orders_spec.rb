require 'rails_helper'

RSpec.describe "PurchaseOrders", type: :request do
  include_examples("request_shared_spec", "purchase_orders", 6)


  let(:valid_attributes) do
    {
      po_number: Faker::Alphanumeric.alpha(number: 10),
      purchase_order_date: Date.current,
      status: "Draft",
      delivery_date: Date.current.advance(days: 7),
      supplier_id: create(:supplier).id
    }
  end

  let(:invalid_attributes) do
    {
      po_number: nil,
    }
  end

  let(:new_attributes) do
    {
      delivery_date: Date::current.advance(days: 20)
    }
  end
end
