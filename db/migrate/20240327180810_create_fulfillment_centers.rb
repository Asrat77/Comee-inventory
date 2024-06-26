# frozen_string_literal: true

class CreateFulfillmentCenters < ActiveRecord::Migration[7.0]
  def change
    create_table :fulfillment_centers do |t|
      t.string :name, null: false
      t.string :address, null: false
      t.string :email, null: false

      t.timestamps
    end
  end
end
