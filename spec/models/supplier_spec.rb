# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Supplier, type: :model do
  attribs = [
    { name: :presence }
  ]

  include_examples('model_shared_spec', :supplier, attribs)
end
