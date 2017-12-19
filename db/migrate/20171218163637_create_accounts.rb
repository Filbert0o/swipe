class CreateAccounts < ActiveRecord::Migration[5.1]
  def change
    create_table :accounts do |t|
      t.string      :account_id,    null: false
      t.string      :mask,          null: false
      t.string      :name,          null: false
      t.string      :official_name, null: false
      t.string      :subtype,       null: false
      t.string      :maintype,          null: false

      t.timestamps
    end
  end
end
