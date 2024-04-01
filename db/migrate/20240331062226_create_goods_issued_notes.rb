class CreateGoodsIssuedNotes < ActiveRecord::Migration[7.0]
  def change
    create_table :goods_issued_notes do |t|
      t.string :gin_number, null: false, unique: true
      t.date :date_issued, null: false
      t.string :issued_by, null: false
      t.string :issued_to, null: false
      t.references :fulfillment_center, null: false, foreign_key: {to_table: :fulfillment_centers, index: {name: 'gin_on_fc_indx'} }
      t.references :sales_order, null: false, foreign_key: {to_table: :sales_orders, index: {name: 'gin_on_so_indx'} }

      t.timestamps
    end
  end
end
