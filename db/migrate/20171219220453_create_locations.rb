class CreateLocations < ActiveRecord::Migration[5.1]
  def change
    create_table :locations do |t|
      t.references :purchase, null: false
      t.string     :address
      t.string     :city
      t.string     :lat
      t.string     :lon
      t.string     :state
      t.string     :store_number
      t.string     :zip

      t.timestamps
    end
  end
end
