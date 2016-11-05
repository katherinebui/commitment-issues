class User < ActiveRecord::Base
  include BCrypt

  has_many :subscriptions
  has_many :channels, through: :subscriptions
  
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: :true
  validates :password, presence: true


  def password
    @password ||= Password.new(hashed_password)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.hashed_password = @password
  end

  def self.authenticate(email, password)
    @user = User.find_by(email: email)
    return @user if @user.password == password
  end
end
