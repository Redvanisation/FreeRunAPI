class User < ApplicationRecord
  has_many :orders
  has_many :products, through: :orders

  has_secure_password

  validates :username, presence: true, length: {maximum: 50}
    
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  
  validates :email, presence: true, length: {maximum: 255}, format: { with: VALID_EMAIL_REGEX },
  uniqueness: {case_sensitive: false}

  validates_presence_of :password_digest, :address

  def self.handle_login(email, password)
    user = User.find_by(email: email.downcase)
    if user && user.authenticate(password)
      user_info = Hash.new
      user_info[:token] = CoreModules::JsonWebToken.encode({user_id: user.id}, 4.hours.from_now)
      user_info[:user_id] = user.id
      user_info[:username] = user.username.capitalize
      user_info[:email] = user.email.downcase
      user_info[:admin] = user.admin
      return user_info
    else
      return false
    end
  end
end
