class ReceivedItemSerializer < ActiveModel::Serializer
  attributes :id, :quantity_ordered, :quantity_received, :unit_price, :total_price, :purchase_order_item, :good_recieve_note
end
