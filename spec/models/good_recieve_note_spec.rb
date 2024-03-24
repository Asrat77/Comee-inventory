# frozen_string_literal: true

require 'rails_helper'

RSpec.describe GoodRecieveNote, type: :model do
  attribs = [
    { grn_number: :uniqueness },
    { grn_number: :presence },
    { total_amount: :presence },
    { total_quantity: :presence }
  ]

  include_examples('model_shared_spec', :good_recieve_note, attribs)
end
