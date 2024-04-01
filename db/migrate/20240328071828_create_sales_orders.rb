class CreateSalesOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :sales_orders do |t|
      t.string :order_number, null: false, unique: true
      t.date :order_date, null: false
      t.string :order_terms
      t.string :delivery_address
      t.date :delivery_date, null: false
      t.string :status, null: false, default: 'Draft'
      t.float :total_price
      t.string :remark

      t.timestamps
    end
  end
end
