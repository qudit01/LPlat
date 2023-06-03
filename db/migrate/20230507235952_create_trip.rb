class CreateTrip < ActiveRecord::Migration[7.0]
  def change
    create_table :trips do |t|
      t.references :user, null: false, foreign_key: true
      t.references :ticket, null: false, foreign_key: true
      t.references :bus, null: false, foreign_key: true
      t.datetime   :arrival_date
      t.timestamps
    end
  end
end
