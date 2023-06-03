class CreateUser < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :first_name,       null: false
      t.string :last_name,        null: false
      t.date :birthday,           null: false
      t.integer :dni,             null: false, index: { unique: true, name: 'unique_dnis' }
      t.integer :phone,           null: false
      t.json :address

      t.timestamps                null: false
    end
  end
end
