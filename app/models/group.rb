# joins table for catergories and purchases
class Group < ApplicationRecord
  belongs_to :purchase
  belongs_to :category
  validates_presence_of :purchase_id, :category_id
end
