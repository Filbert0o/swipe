class CreateGroups < ActiveRecord::Migration[5.1]
  def change
    create_table :groups do |t|
      t.references :purchase, null: false
      t.references :category, null: false

      t.timestamps
    end
  end
end
