class GoodRecieveNotesController < ApplicationController
  include Common

  def generate_grn
    # fetch the GRN with associated received items and purchase order
    @grn = fetch_grn_with_associations(params[:id])
    # calculate total quantity and total amount of received items
    calculate_totals_for_received_items
    # update the GRN with the calculated totals
    update_grn_totals
    # prepare the result to be rendered as JSON
    result = prepare_result_for_json
    # render the JSON response
    render json: { success: true, data: result }
  end

  private

  def fetch_grn_with_associations(id)
    GoodRecieveNote.includes(:received_items, :purchase_order).find(id)
  end

  def calculate_totals_for_received_items
    @received_items = @grn.received_items
    @grn.total_quantity = @received_items.sum(:quantity_received)
    @grn.total_amount = @received_items.sum(:total_price)
  end

  def update_grn_totals
    @grn.update_columns(total_quantity: @grn.total_quantity, total_amount: @grn.total_amount)
  end

  def prepare_result_for_json
    {
      header: { grn_number: @grn.grn_number, date_of_receipt: @grn.date_of_receipt,
                supplier_name: @grn.purchase_order.supplier_name },
      items: {
        received_items: serialize(@received_items),
        total_quantity: @grn.total_quantity,
        total_amount: @grn.total_amount
      }
    }
  end

  def model_params
    params.require(:payload).permit(:grn_number, :date_of_receipt, :total_quantity, :total_amount, :recieved_condition,
                                    :comments, :purchase_order_id)
  end
end
