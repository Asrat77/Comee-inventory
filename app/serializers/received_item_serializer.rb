# frozen_string_literal: true

class ReceivedItemSerializer < ActiveModel::Serializer
  attributes :id, :quantity_ordered, :quantity_received, :unit_price, :total_price
end
