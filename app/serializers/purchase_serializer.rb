# Transaction Serializer
class PurchaseSerializer < ActiveModel::Serializer
  attributes  :account_id,
              :account_owner,
              :amount,
              :categories,
              :category_id,
              :transaction_date,
              :location,
              :name,
              :payment,
              :pending,
              :pending_transaction_id,
              :transaction_id,
              :transaction_type
  belongs_to :account
  has_many :categories
  has_one :location
  has_one :payment
end
