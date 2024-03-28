class Client < ApplicationRecord
  validates :name, :email, presence: true
  validates :email, format: URI::MailTo::EMAIL_REGEXP
end
