require 'rails_helper'

RSpec.describe PurchaseOrderItem, type: :model do
  attribs = [
    { delivery_date: :presence },
    { quantity: :presence },
    { purchase_order: :belong_to },
    { status: [:presence, { inclusion: [[:in_array, PurchaseOrderItem::STATUSES]] }] }
  ]

  it 'validates total_price' do
    poi = create(:purchase_order_item, unit_price: 10, quantity: 5)
    expect(poi.total_price).to eq(50)
  end

  include_examples('model_shared_spec', :purchase_order_item, attribs)
end
