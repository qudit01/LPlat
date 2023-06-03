class CreateBuy < ActiveRecord::Migration[7.0]
  def change
    create_table :buys do |t|
      t.float :total, null: false

      t.timestamps
    end
  end
end
