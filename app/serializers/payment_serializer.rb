# BalanceSerializer
class PaymentSerializer < ActiveModel::Serializer
  attributes :by_order_of,
             :payee,
             :payer,
             :payment_method,
             :payment_processor,
             :ppd_id,
             :reason,
             :reference_number
  belongs_to :purchase
end
