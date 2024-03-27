# frozen_string_literal: true

class FulfillmentCenter < ApplicationRecord
  validates :name, :address, :email, presence: true
  validates :email, format: URI::MailTo::EMAIL_REGEXP
end
