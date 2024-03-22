class CreateGoodRecieveNotes < ActiveRecord::Migration[7.0]
  def change
    create_table :good_recieve_notes do |t|
      t.string :grn_number, null: false, unique: true
      t.string :date_of_receipt
      t.float :total_quantity, null: false
      t.float :total_amount, null: false
      t.string :recieved_condition
      t.string :comments
      t.references :purchase_order, null: false, foreign_key: {to_table: :purchase_orders, index: {name: "grn_on_po_indx"}}

      t.timestamps
    end
  end
end
