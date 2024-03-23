require 'rails_helper'

RSpec.describe PurchaseOrder, type: :model do
  attribs = [
    { po_number: :presence },
    { po_number: :uniqueness },
    { purchase_order_date: :presence },
    { status: :presence },
    { delivery_date: :presence },
    { supplier: :belong_to },
    status: [:presence, { inclusion: [[:in_array, PurchaseOrder::STATUSES]] }]
  ]

  include_examples('model_shared_spec', :purchase_order, attribs)
end
