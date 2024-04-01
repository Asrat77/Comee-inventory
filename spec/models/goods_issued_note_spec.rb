require 'rails_helper'

RSpec.describe GoodsIssuedNote, type: :model do
  attribs = [
    { gin_number: :uniqueness },
    { gin_number: :presence },
    { date_issued: :presence },
    { issued_by: :presence },
    { issued_to: :presence },
    { fulfillment_center: :belong_to },
    { sales_order: :belong_to }
  ]

  include_examples('model_shared_spec', :goods_issued_note, attribs)
end
