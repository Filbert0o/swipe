# Account
class Account < ApplicationRecord
  has_one :balance
  has_many :transactions
  validates_presence_of :account_id, :mask, :name, :official_name, :subtype, :maintype
end
