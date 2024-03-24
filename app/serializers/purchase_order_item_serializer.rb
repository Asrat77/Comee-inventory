# frozen_string_literal: true

class PurchaseOrderItemSerializer < ActiveModel::Serializer
  attributes :id, :status, :quantity, :delivery_date, :purchase_order
end
