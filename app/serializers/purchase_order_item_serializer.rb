class PurchaseOrderItemSerializer < ActiveModel::Serializer
  attributes :id, :status, :quantity, :delivery_date, :purchase_order
end
