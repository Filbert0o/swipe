class CreatePurchases < ActiveRecord::Migration[5.1]
  def change
    create_table :purchases do |t|
      t.references  :account,               null: false
      t.string      :account_owner
      t.float       :amount,                null: false
      t.string      :category_id
      t.string      :transaction_date,      null: false
      t.string      :name,                  null: false
      t.boolean     :pending
      t.string      :pending_transaction_id
      t.string      :transaction_id,        null: false
      t.string      :transaction_type,      null: false

      t.timestamps
    end
  end
end
