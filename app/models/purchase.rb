# purchase
class Purchase < ApplicationRecord
  belongs_to :account
  has_one :location
  has_one :payment
  has_many :groups
  has_many :categories, through: :groups
  validates_presence_of :account_id, :amount, :transaction_date, :name, :transaction_id, :transaction_type
end
