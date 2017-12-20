class CreatePayments < ActiveRecord::Migration[5.1]
  def change
    create_table :payments do |t|
      t.references :purchase,           null: false
      t.string     :by_order_of
      t.string     :payee
      t.string     :payer
      t.string     :payment_method
      t.string     :payment_processor
      t.string     :ppd_id
      t.string     :reason
      t.string     :reference_number

      t.timestamps
    end
  end
end
