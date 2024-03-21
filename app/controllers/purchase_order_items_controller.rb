class PurchaseOrderItemsController < ApplicationController
  include Common

  private

  def model_params
    params.require(:payload).permit(:status, :delivery_date, :quantity, :purchase_order_id)
  end

end
