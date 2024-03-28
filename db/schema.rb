# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2024_03_28_065614) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clients", force: :cascade do |t|
    t.string "name", null: false
    t.string "email", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fulfillment_centers", force: :cascade do |t|
    t.string "name", null: false
    t.string "address", null: false
    t.string "email", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "good_recieve_notes", force: :cascade do |t|
    t.string "grn_number", null: false
    t.string "date_of_receipt"
    t.float "total_quantity", null: false
    t.float "total_amount", null: false
    t.string "recieved_condition"
    t.string "comments"
    t.bigint "purchase_order_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["purchase_order_id"], name: "index_good_recieve_notes_on_purchase_order_id"
  end

  create_table "purchase_order_items", force: :cascade do |t|
    t.string "status", null: false
    t.date "delivery_date", null: false
    t.float "quantity", null: false
    t.float "unit_price", null: false
    t.float "total_price", null: false
    t.bigint "purchase_order_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["purchase_order_id"], name: "index_purchase_order_items_on_purchase_order_id"
  end

  create_table "purchase_orders", force: :cascade do |t|
    t.string "po_number", null: false
    t.date "purchase_order_date", null: false
    t.string "status", null: false
    t.date "delivery_date", null: false
    t.bigint "supplier_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["supplier_id"], name: "index_purchase_orders_on_supplier_id"
  end

  create_table "received_items", force: :cascade do |t|
    t.float "quantity_ordered", null: false
    t.float "quantity_received"
    t.float "unit_price", null: false
    t.float "total_price"
    t.bigint "purchase_order_item_id", null: false
    t.bigint "good_recieve_note_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["good_recieve_note_id"], name: "index_received_items_on_good_recieve_note_id"
    t.index ["purchase_order_item_id"], name: "index_received_items_on_purchase_order_item_id"
  end

  create_table "suppliers", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "good_recieve_notes", "purchase_orders"
  add_foreign_key "purchase_order_items", "purchase_orders"
  add_foreign_key "purchase_orders", "suppliers"
  add_foreign_key "received_items", "good_recieve_notes"
  add_foreign_key "received_items", "purchase_order_items"
end
