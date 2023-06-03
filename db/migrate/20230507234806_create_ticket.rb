class CreateTicket < ActiveRecord::Migration[7.0]
  def change
    create_table :tickets do |t|
      t.date :departure_date, null: false
      t.string :departure_hour, null: false
      t.string :platform, null: false
      t.integer :seat, null: false
      t.string :destination, null: false

      t.timestamps
    end
  end
end
