require 'rails_helper'

RSpec.describe Client, type: :model do
  attribs = [
    { name: :presence },
    { email: :presence }
  ]

  it { is_expected.to(allow_values('abc@def.com', 'ghi@jlk.mn', 'jkl_mn@op.q').for(:email)) }

  include_examples('model_shared_spec', :client, attribs)
end
