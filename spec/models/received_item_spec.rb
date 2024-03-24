# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ReceivedItem, type: :model do
  attribs = [
    { unit_price: :presence },
    { quantity_received: :presence },
    { quantity_ordered: :presence },
    { purchase_order_item: :belong_to },
    { good_recieve_note: :belong_to }
  ]

  it 'validates total_price' do
    ri = create(:received_item, unit_price: 10, quantity_received: 5)
    expect(ri.total_price).to eq(50)
    ri.reload
    expect(ri.total_price).to eq(ri.unit_price * ri.quantity_received)
  end

  include_examples('model_shared_spec', :received_item, attribs)
end
