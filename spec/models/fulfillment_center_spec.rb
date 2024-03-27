require 'rails_helper'

RSpec.describe FulfillmentCenter, type: :model do
  attribs = [
    { name: :presence },
    { address: :presence },
    { email: :presence }
  ]

  it { is_expected.to(allow_values('abc@def.com', 'ghi@jlk.mn', 'jkl_mn@op.q').for(:email)) }

  include_examples('model_shared_spec', :fulfillment_center, attribs)
end
