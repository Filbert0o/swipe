class CreateBudgets < ActiveRecord::Migration[5.1]
  def change
    create_table :budgets do |t|
      t.references :user,   null: false, unique: true
      t.float      :budget, null: false, default: 0

      t.timestamps
    end
  end
end
