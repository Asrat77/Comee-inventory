require 'rails_helper'

RSpec.describe 'ReceivedItems', type: :request do
  include_examples('request_shared_spec', 'received_items', 5)

  let(:valid_attributes) do
    {
      quantity_ordered: 20,
      quantity_received: 18,
      unit_price: 200,
      total_price: 3600,
      purchase_order_item_id: create(:purchase_order_item).id,
      good_recieve_note_id: create(:good_recieve_note).id
    }
  end

  let(:invalid_attributes) do
    {
      quantity_ordered: nil
    }
  end

  let(:new_attributes) do
    {
      quantity_received: 17
    }
  end
end
