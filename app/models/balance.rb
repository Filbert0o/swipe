# Balance
class Balance < ApplicationRecord
  belongs_to :account

  validates_presence_of :account_id
end
