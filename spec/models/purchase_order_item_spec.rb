require 'rails_helper'

RSpec.describe PurchaseOrderItem, type: :model do
  attribs = [
      {delivery_date: :presence},
      {quantity: :presence},
      {purchase_order: :belong_to},
      {status: [:presence, inclusion: [[:in_array, PurchaseOrderItem::STATUSES]]]}
    ]

    include_examples("model_shared_spec", :purchase_order_item, attribs)
end
