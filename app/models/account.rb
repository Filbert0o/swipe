# Account
class Account < ApplicationRecord
  has_one :balance

  validates_presence_of
  :account_id,
  :mask,
  :name, 
  :official_name,
  :subtype,
  :maintype
end
