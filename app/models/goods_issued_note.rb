class GoodsIssuedNote < ApplicationRecord
  belongs_to :fulfillment_center
  belongs_to :sales_order
  after_save :assign_issued_to

  validates :gin_number, :date_issued, :issued_by, :issued_to, presence: true

  validates :gin_number, uniqueness: true

  def assign_issued_to
    self.issued_to = fulfillment_center.name
  end

end
