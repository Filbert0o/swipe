class CreateBalances < ActiveRecord::Migration[5.1]
  def change
    create_table :balances do |t|
      t.references  :account
      t.float     :available
      t.float     :current
      t.float     :limit

      t.timestamps
    end
  end
end
