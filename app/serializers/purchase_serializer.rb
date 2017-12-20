# Transaction Serializer
class PurchaseSerializer < ActiveModel::Serializer
  attributes  :id,
              :account_id,
              :account_owner,
              :amount,
              :category,
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
  has_one :location
  has_one :payment

  def category
    object.categories.map(&:name)
  end
end
