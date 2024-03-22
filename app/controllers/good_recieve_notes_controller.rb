class GoodRecieveNotesController < ApplicationController
  include Common

  private
  def model_params
    params.require(:payload).permit(:grn_number, :date_of_receipt, :total_quantity, :total_amount, :recieved_condition, :comments, :purchase_order_id)
  end

end
