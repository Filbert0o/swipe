class AccountSerializer < ActiveModel::Serializer
  attributes :id,
             :account_id,
             :balance,
             :mask,
             :name,
             :official_name,
             :subtype,
             :maintype
  has_one :balance
end
