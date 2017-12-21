class CreateBudgets < ActiveRecord::Migration[5.1]
  def change
    create_table :budgets do |t|
      t.integer :user_id, null: false
      t.float   :budget,  null: false, default: 0

      t.timestamps
    end
  end
end
