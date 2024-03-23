class CreateReceivedItems < ActiveRecord::Migration[7.0]
  def change
    create_table :received_items do |t|
      t.float :quantity_ordered, null: false
      t.float :quantity_received
      t.float :unit_price, null: false
      t.float :total_price, null: false
      t.references :purchase_order_item, null: false,
                                         foreign_key: { to_table: :purchase_order_items, index: { name: 'ri_on_poi_indx' } }
      t.references :good_recieve_note, null: false,
                                       foreign_key: { to_table: :good_recieve_notes, index: { name: 'ri_on_grn_indx' } }

      t.timestamps
    end
  end
end
