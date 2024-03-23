class ReceivedItemsController < ApplicationController
  include Common

  private

  def model_params
    params.require(:payload).permit(:quantity_ordered, :quantity_received, :unit_price, :total_price,
                                    :purchase_order_item_id, :good_recieve_note_id)
  end
end
