require 'rails_helper'

RSpec.describe SalesOrder, type: :model do
  attribs = [
    { order_number: :presence },
    { order_number: :uniqueness },
    { order_date: :presence },
    { delivery_date: :presence },
    { status: :presence }
  ]
  include_examples('model_shared_spec', :sales_order, attribs)
end
