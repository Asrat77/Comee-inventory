class PurchaseOrdersController < ApplicationController
  include Common

  private

  def model_params
    params.require(:payload).permit(:po_number, :purchase_order_date, :status, :delivery_date, :supplier_name)
  end
end
