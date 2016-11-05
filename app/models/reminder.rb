class Reminder < ActiveRecord::Base
  validates_presence_of :body
  validates_uniqueness_of :body

  has_many :messages
  has_many :users, through: :messages, foreign_key: :user_id
end
