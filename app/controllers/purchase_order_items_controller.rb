class PurchaseOrderItemsController < ApplicationController
  include Common

  private

  def model_params
    params.require(:payload).permit(:status, :delivery_date, :quantity, :unit_price, :total_price, :purchase_order_id)
  end
end
