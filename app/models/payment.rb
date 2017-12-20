# Payment
class Payment < ApplicationRecord
  belongs_to :purchase
  validates_presence_of :purchase_id
end
