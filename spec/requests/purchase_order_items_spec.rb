require 'rails_helper'

RSpec.describe "PurchaseOrderItems", type: :request do
  include_examples("request_shared_spec", "purchase_order_items", 5)


  let(:valid_attributes) do
    {
      status: "Draft",
      delivery_date: Date.current.advance(days: 7),
      quantity: 7,
      unit_price: 10,
      total_price: 70,
      purchase_order_id: create(:purchase_order).id
    }
  end

  let(:invalid_attributes) do
    {
      status: nil,
    }
  end

  let(:new_attributes) do
    {
      delivery_date: Date::current.advance(days: 20)
    }
  end
end
