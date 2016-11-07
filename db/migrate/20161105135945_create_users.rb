class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_hash
      t.string :email
      t.integer :phone_number
      t.integer :time_increment

      t.timestamps
    end
  end
end
