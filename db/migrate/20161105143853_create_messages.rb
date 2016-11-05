class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.integer :user_id
      t.integer :reminder_id

      t.timestamps
  end
 
    add_index :messages, [:user_id, :reminder_id]
    add_index :messages, :reminder_id
  end
end
