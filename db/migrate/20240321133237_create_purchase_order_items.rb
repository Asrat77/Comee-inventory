class CreatePurchaseOrderItems < ActiveRecord::Migration[7.0]
  def change
    create_table :purchase_order_items do |t|
      t.string :status, null: false
      t.date :delivery_date, null: false
      t.float :quantity, null: false
      t.float :unit_price, null: false
      t.float :total_price, null: false
      t.references :purchase_order, null: false, foreign_key: {to_table: :purchase_orders, index: {name: "poi_on_po_indx"}}

      t.timestamps
    end
  end
end
