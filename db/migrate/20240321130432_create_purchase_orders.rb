# frozen_string_literal: true

class CreatePurchaseOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :purchase_orders do |t|
      t.string :po_number, null: false, uniquness: true
      t.date :purchase_order_date, null: false
      t.string :status, null: false
      t.date :delivery_date, null: false
      t.references :supplier, null: false, foreign_key: { to_table: :suppliers, index: { name: 'po_on_supplier_indx' } }

      t.timestamps
    end
  end
end
