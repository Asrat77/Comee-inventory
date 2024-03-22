class PurchaseOrderSerializer < ActiveModel::Serializer
  attributes :id, :po_number, :purchase_order_date, :status, :delivery_date, :supplier_name
end
