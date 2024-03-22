class GoodRecieveNotesController < ApplicationController
  include Common

  def generate_grn
    @grn = GoodRecieveNote.includes(:received_items, :purchase_order).find(params[:id])
    @received_items = ReceivedItem.where(good_recieve_note_id: @grn.id)
    @purchase_order = PurchaseOrder.where(id: @grn.purchase_order_id)
    @grn.total_amount = 0
    @grn.total_quantity = 0
    @received_items.each do |ri|
      @grn.total_quantity += ri.quantity_received
      @grn.total_amount += ri.total_price
    end
    @grn.save
    result = {header:{grn_number: @grn.grn_number, date_of_receipt: @grn.date_of_receipt}, items:{received_items: serialize(@received_items), total_quantity: @grn.total_quantity, total_amount: @grn.total_amount}}

    render json: {success: true, data: result}
  end

  private
  def model_params
    params.require(:payload).permit(:grn_number, :date_of_receipt, :total_quantity, :total_amount, :recieved_condition, :comments, :purchase_order_id)
  end
end
