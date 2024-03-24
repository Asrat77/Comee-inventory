# frozen_string_literal: true

class SuppliersController < ApplicationController
  include Common

  private

  def model_params
    params.require(:payload).permit(:name)
  end
end
