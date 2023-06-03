class SorceryCore < ActiveRecord::Migration[7.0]
  def change
    change_table :users do |t|
      t.string :email,            null: false, index: { unique: true, name: 'unique_emails' }
      t.string :crypted_password
      t.string :salt
    end
  end
end
