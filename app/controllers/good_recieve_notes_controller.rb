class GoodRecieveNotesController < ApplicationController
  include Common

  def generate_grn
    @grn = GoodRecieveNote.includes(:received_items, :purchase_order).find(params[:id])

    @received_items = @grn.received_items
    @grn.total_quantity = @received_items.sum(:quantity_received)
    @grn.total_amount = @received_items.sum(:total_price)

    @grn.update_columns(total_quantity: @grn.total_quantity, total_amount: @grn.total_amount)

    result = {
      header: { grn_number: @grn.grn_number, date_of_receipt: @grn.date_of_receipt },
      items: { received_items: serialize(@received_items), total_quantity: @grn.total_quantity, total_amount: @grn.total_amount }
    }

    render json: { success: true, data: result }
  end

  private

  def model_params
    params.require(:payload).permit(:grn_number, :date_of_receipt, :total_quantity, :total_amount, :recieved_condition, :comments, :purchase_order_id)
  end
end
