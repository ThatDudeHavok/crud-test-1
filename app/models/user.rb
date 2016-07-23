require 'bcrypt'

class User < ActiveRecord::Base
  has_many :orders

  # Remember to create a migration!
  validates_presence_of :email, :fname, :password_hash

  def authenticate(plain_password)
    self.password_hash == plain_password
  end

  def password
    @password ||= BCrypt::Password.new(password_hash)
  end

  def password=(new_password)
    @password = BCrypt::Password.create(new_password)
    self.password_hash = @password
  end

  def create
    @user = User.new(params[:user])
    @user.password = params[:password]
    @user.save!
  end
end
