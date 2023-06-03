class CreateBus < ActiveRecord::Migration[7.0]
  def change
    create_table :buses do |t|
      t.integer :car_id, null: false, index: { unique: true, name: 'unique_cars' }
      t.string :plate, null: false
      t.json :seats, null: false
      t.string :brand, null: false
      t.string :model
      t.text :description

      t.timestamps
    end
  end
end
