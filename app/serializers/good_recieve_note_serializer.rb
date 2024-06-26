# frozen_string_literal: true

class GoodRecieveNoteSerializer < ActiveModel::Serializer
  attributes :id, :grn_number, :date_of_receipt, :total_amount, :total_quantity, :recieved_condition, :comments,
             :po_number, :purchase_order_date, :supplier_id
end
