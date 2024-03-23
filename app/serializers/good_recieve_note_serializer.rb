class GoodRecieveNoteSerializer < ActiveModel::Serializer
  attributes :id, :grn_number, :date_of_receipt, :total_amount, :total_quantity, :recieved_condition, :comments,
             :purchase_order
end
