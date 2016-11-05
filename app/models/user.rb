require 'bcrypt'

class User < ActiveRecord::Base
  include BCrypt

  has_many :messages
  has_many :reminders, through: :messages, foreign_key: :reminder_id

  validates_presence_of :username
  validates_uniqueness_of :username
  validates_presence_of :password
  validates_presence_of :email
  validates_uniqueness_of :email
  
  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end

end
