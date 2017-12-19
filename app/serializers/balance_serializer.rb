# BalanceSerializer
class BalanceSerializer < ActiveModel::Serializer
  attributes :available,
             :current,
             :limit
  belongs_to :account
end
