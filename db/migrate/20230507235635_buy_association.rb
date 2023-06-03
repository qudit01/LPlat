class BuyAssociation < ActiveRecord::Migration[7.0]
  def change
    add_reference :buys, :ticket, null: false, foreign_key: true
    add_reference :buys, :user, null: false, foreign_key: true
  end
end
