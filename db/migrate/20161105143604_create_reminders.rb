class CreateReminders < ActiveRecord::Migration
  def change
    create_table :reminders do |t|
      t.string :body

      t.timestamps
    end
  end
end
